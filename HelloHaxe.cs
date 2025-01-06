using Godot;
using MagicRt.Scripting;

namespace MagicRt.Tests.HelloHaxe
{
	public class HelloHaxe : LuaNode
	{
		public override void _Ready()
		{
			_luaEnviroment.AddPlugin(typeof(TestPlugin));
			string basePath = "res://";
			if (!OS.HasFeature("editor"))
			{
				basePath = OS.GetExecutablePath().GetBaseDir() + "/";
			}
			StartFromPath(basePath + "Tests/UiTest//");
		}
	}
}
