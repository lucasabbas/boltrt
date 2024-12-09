using System.Collections.Generic;
using Godot;
using Jint;
using Koneko.IO;
using JSEngine = Jint.Engine;

namespace Koneko.Scripting
{
    public class ScriptingEnvironment
    {
        public IOManager IoManager;
        private GodotConsole _console;
        public JSEngine Engine;
        
        private List<Plugin> _plugins = new List<Plugin>();

        public ScriptingEnvironment()
        {
            IoManager = new IOManager();
            _console = new GodotConsole();
            var moduleLoader = new IOModuleLoader(IoManager);
            Engine = new JSEngine(options =>
            {
                options.EnableModules(moduleLoader);
            });
            
            Engine.SetValue("console", _console);
            Engine.SetValue(nameof(Vector3) , typeof(Vector3));
            Engine.SetValue(nameof(Vector2) , typeof(Vector2));
            Engine.SetValue(nameof(Quat) , typeof(Quat));
            Engine.SetValue(nameof(Color) , typeof(Color));
            Engine.SetValue(nameof(Rect2), typeof(Rect2));
        }
        
        public void AddPlugin(Plugin plugin)
        {
            _plugins.Add(plugin);
            //plugin.Enviroment = this;
            plugin.Init();
        }
        
        public void RemovePlugin(Plugin plugin)
        {
            _plugins.Remove(plugin);
        }
    }
}