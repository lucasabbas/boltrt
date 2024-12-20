using System;
using System.Collections.Generic;
using Godot;
using Koneko.IO;
using MoonSharp.Interpreter;
using MoonSharp.VsCodeDebugger;
using Script = MoonSharp.Interpreter.Script;

namespace Koneko.Scripting
{

    public class LuaEnviroment
    {
        public IOManager IoCore;

        public Script Script;

        private MoonSharpVsCodeDebugServer server;

        public Dictionary<string, string> EnviromentVariables = new Dictionary<string, string>();

        public List<Plugin> Plugins = new List<Plugin>();

        public Table Modules;

        private bool _sandboxed = false;

        public bool Sandboxed
        {
            get => _sandboxed;
            set
            {
                if (_sandboxed == false)
                {
                    _sandboxed = value;
                }
                else
                {
                    throw new Exception("Sandbox cannot be turn off once set to true");
                }
            }
        }

        public class OnExitEventArgs : EventArgs
        {
            public int ExitCode;
        }

        public event EventHandler<OnExitEventArgs> OnExit;

        public LuaEnviroment()
        {
            Script = new Script();
            server = new MoonSharpVsCodeDebugServer();
            IoCore = new IOManager();
            Script.GlobalOptions.Platform = new KonekoPlatformAccessor(this);
            Script.Options.ScriptLoader = new IoScriptLoader(IoCore, this);
            Script.Globals["doubleToFloat"] = (Func<double, float>)DoubleToFloat;

            UserData.RegisterType<IOManager>(); // Register the IoCoreMulti type
            Script.Globals["ioCore"] = IoCore;
            Script.Globals["__lua__"] = (Func<string, DynValue>)eval;
            Script.Globals["eval"] = (Func<string, DynValue>)eval;
            Modules = new Table(Script);
            Script.Globals["_MD"] = Modules;

            EnviromentVariables["PLATFORM"] = "Lucidware";
            EnviromentVariables["PLATFORM_VERSION"] = "1.0.0";

            EnviromentVariables["OS_NAME"] = OS.GetName();

            //AddModule(typeof(Sys));
        }

        public void AddPlugin(Plugin plugin)
        {
            Plugins.Add(plugin);
            plugin.Enviroment = this;
            plugin.Init();
        }

        public void AddPlugin(Type pluginType)
        {
            if (pluginType.BaseType != typeof(Plugin))
            {
                throw new Exception("Plugin must inherit from Plugin class");
            }
            var plugin = (Plugin)Activator.CreateInstance(pluginType);
            AddPlugin(plugin);
        }

        public void Start(string entryPoint)
        {
            try
            {
                string fullPath = IoCore.GetFullPath(entryPoint);
                GD.Print($"Loading script from path: {fullPath}");

                server.AttachToScript(Script, fullPath, code => fullPath);
                server.Start();

                Script.DoFile(entryPoint);
            }
            catch (Exception e)
            {
                if (e is ScriptRuntimeException)
                {
                    var ex = (ScriptRuntimeException)e;
                    GD.Print($"Error: {ex.DecoratedMessage}");
                }
                else
                {
                    GD.Print("Error: ");
                }
            }
        }

        public void LoadScript(string path)
        {

        }
        
        public DynValue eval(string code)
        {
            return Script.DoString(code);
        }

        public void Exit(int exitCode)
        {
            OnExit?.Invoke(this, new OnExitEventArgs() { ExitCode = exitCode });
        }

        public float DoubleToFloat(double d)
        {
            return (float)d;
        }
    }
}