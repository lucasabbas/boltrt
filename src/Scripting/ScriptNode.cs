using System;
using Godot;
using Jint.Runtime.Interop;
using Koneko.IO;
using MoonSharp.Interpreter;

namespace Koneko.Scripting
{

    public class ScriptNode : Node
    {
        private ScriptingEnvironment _environment;

        private String _mainScriptPath = "data://main.js";

        
        public delegate void UpdateEventHandler(float delta);
        public UpdateEventHandler Update;
        public delegate void PhysicsUpdateEventHandler(float delta);
        public PhysicsUpdateEventHandler PhysicsUpdate;
        public delegate void InputEventHandler(InputEvent @event);
        public InputEventHandler Input;
        public delegate void UnhandledInputEventHandler(InputEvent @event);
        public UnhandledInputEventHandler UnhandledInput;
        public delegate void UnhandledKeyInputEventHandler(InputEvent @event);
        public UnhandledKeyInputEventHandler UnhandledKeyInput;
        public delegate void StopEventHandler();
        public StopEventHandler Stop;
         

        public ScriptNode()
        {
            _environment = new ScriptingEnvironment();
            _environment.Engine.SetValue("rootNode", this);
        }

        public void StartFromPath(string path, string pathUrl = "data://")
        {
            try
            {
                FileSystemIO fileSys = new FileSystemIO(ProjectSettings.GlobalizePath(path), pathUrl);
                _environment.IoManager.Register(fileSys);
                _environment.Engine.Modules.Import(_mainScriptPath);
            }
            catch (Exception ex)
            {
                GD.Print($"Failed to load module from path: {_mainScriptPath}. Exception: {ex.Message}");
            }
        }
        

        private float DoubleToFloat(double d)
        {
            return (float)d;
        }

        public void _Process(double delta)
        {
            Update?.Invoke(DoubleToFloat(delta));
        }

        public void _PhysicsProcess(double delta)
        {
            PhysicsUpdate?.Invoke(DoubleToFloat(delta));
        }

        public override void _Input(InputEvent @event)
        {
            Input?.Invoke(@event);
        }

        public override void _UnhandledInput(InputEvent @event)
        {
            UnhandledInput?.Invoke(@event);
        }
        
        public override void _UnhandledKeyInput(InputEventKey @event)
        {
            UnhandledKeyInput?.Invoke(@event);
        }
        

        public override void _ExitTree()
        {
            Stop?.Invoke();
        }

    }
}