using System;
using Godot;
using Koneko.IO;
using MoonSharp.Interpreter;

namespace Koneko.Scripting
{

    public partial class LuaNode : Node
    {
        private LuaEnviroment _luaEnviroment;

        private String _mainScriptPath = "data://main.lua";

        /*
        [Signal] public delegate void MainEventHandler();
        [Signal] public delegate void UpdateEventHandler(float delta);
        [Signal] public delegate void PhysicsUpdateEventHandler(float delta);
        [Signal] public delegate void InputEventHandler(InputEvent @event);
        [Signal] public delegate void UnhandledInputEventHandler(InputEvent @event);
        [Signal] public delegate void ShortcutInputEventHandler(InputEvent @event);
        [Signal] public delegate void UnhandledKeyInputEventHandler(InputEvent @event);
        [Signal] public delegate void StopEventHandler();
         */

        public LuaNode()
        {
            _luaEnviroment = new LuaEnviroment();
            //_luaEnviroment.AddPlugin(typeof(GodotModule));
            //_luaEnviroment.AddPlugin(typeof(GodotExtensions));
            //_luaEnviroment.AddPlugin(typeof(UiModule));
            UserData.RegisterType<LuaNode>();
            _luaEnviroment.Script.Globals["rootNode"] = this;
        }

        public void StartFromPath(string path)
        {
            FileSystemIO fileSys = new FileSystemIO(ProjectSettings.GlobalizePath(path), "data://");
            _luaEnviroment.IoCore.Register(fileSys);
            _luaEnviroment.Start(_mainScriptPath);
        }

        private float DoubleToFloat(double d)
        {
            return (float)d;
        }

        public void _Process(double delta)
        {
            if (_luaEnviroment.Script.Globals["update"] != null)
            {
                var update = _luaEnviroment.Script.Globals["update"];
                _luaEnviroment.Script.Call(update, DoubleToFloat(delta));
            }
        }

        public void _PhysicsProcess(double delta)
        {
            if (_luaEnviroment.Script.Globals["physicsUpdate"] != null)
            {
                var physicsUpdate = _luaEnviroment.Script.Globals["physicsUpdate"];
                _luaEnviroment.Script.Call(physicsUpdate, DoubleToFloat(delta));
            }
        }

        public override void _Input(InputEvent @event)
        {
            if (_luaEnviroment.Script.Globals["input"] != null)
            {
                var input = _luaEnviroment.Script.Globals["input"];
                _luaEnviroment.Script.Call(input, @event);
            }
        }

        public override void _UnhandledKeyInput(InputEventKey @event)
        {
            if (_luaEnviroment.Script.Globals["unhandledInput"] != null)
            {
                var unhandledInput = _luaEnviroment.Script.Globals["unhandledInput"];
                _luaEnviroment.Script.Call(unhandledInput, @event);
            }
        }

        public override void _ExitTree()
        {
            if (_luaEnviroment.Script.Globals["stop"] != null)
            {
                var stop = _luaEnviroment.Script.Globals["stop"];
                _luaEnviroment.Script.Call(stop);
            }
        }
    }
}