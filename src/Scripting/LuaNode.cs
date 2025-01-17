using System;
using Godot;
using Bolt.IO;
using Bolt.Plugins;
using MoonSharp.Interpreter;
using System.Xml;
using System.Xml.Linq;

namespace Bolt.Scripting
{

	public partial class LuaNode : Node
	{
		internal LuaEnviroment _luaEnviroment;

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
		 
		 private string title;

		public LuaNode()
		{
			_luaEnviroment = new LuaEnviroment();
			title = "Bolt";
		}

		public virtual void LoadPlugins() 
		{
			_luaEnviroment.AddPlugin(typeof(GodotPlugin));
			_luaEnviroment.AddPlugin(typeof(GodotExtensions));
			UserData.RegisterType<LuaNode>();
			_luaEnviroment.Script.Globals["rootNode"] = this;
		}

		public override void _Ready()
		{
			OS.SetWindowTitle(title);
		}

        public void StartFromPath(string path)
		{
			FileSystemIO fileSys = new FileSystemIO(ProjectSettings.GlobalizePath(path), "data://");
			_luaEnviroment.IoCore.Register(fileSys);
			LoadPlugins();
			_luaEnviroment.Start(_mainScriptPath);
		}

		public void StartFromLKProject(string filepath)
		{
			var filestring = System.IO.File.ReadAllText(filepath);
			var xml = XDocument.Parse(filestring);
			var app = xml.Element("app");
			var title = app.Element("title").Value;
			this.title = title;
			var mainScript = app.Element("mainScript").Value;
			_mainScriptPath = mainScript;
			var baseDir = filepath.GetBaseDir();
			StartFromPath(baseDir);
			OS.SetWindowTitle(title);
		}

		public void StartFromZip(byte[] bytes)
		{
			ZipIO zip = new ZipIO(bytes, "data://");
			string boltPath = null;
			foreach (var file in zip.GetFileList("data://"))
			{
				GD.Print(file);
				if (file.EndsWith(".bolt"))
				{
					boltPath = file;
					break;
				}
			}
			if (boltPath == null)
			{
				throw new Exception("No .bolt file found in zip");
			}
			var filestring = zip.LoadText(boltPath);
			var xml = XDocument.Parse(filestring);
			var app = xml.Element("app");
			var title = app.Element("title").Value;
			this.title = title;
			var mainScript = app.Element("mainScript").Value;
			_mainScriptPath = mainScript;
			_luaEnviroment.IoCore.Register(zip);
			LoadPlugins();
			_luaEnviroment.Start(_mainScriptPath);
		}

		public void StartFromZipFilePath(string filepath)
		{
			var bytes = System.IO.File.ReadAllBytes(filepath);
			StartFromZip(bytes);
		}

		private float DoubleToFloat(double d)
		{
			return (float)d;
		}

		public override void _Process(float delta)
		{	
			if (_luaEnviroment.Script.Globals["process"] != null)
			{
				var update = _luaEnviroment.Script.Globals["process"];
				_luaEnviroment.Script.Call(update, delta);
			}
		}

		public override void _PhysicsProcess(float delta)
		{
			if (_luaEnviroment.Script.Globals["physicsProcess"] != null)
			{
				var physicsUpdate = _luaEnviroment.Script.Globals["physicsProcess"];
				_luaEnviroment.Script.Call(physicsUpdate, delta);
			}
		}

		public override void _Input(InputEvent @event)
		{
			if (Input.IsActionJustPressed("fullscreen"))
			{
				OS.WindowFullscreen = !OS.WindowFullscreen;
			}
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
