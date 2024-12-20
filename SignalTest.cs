using Godot;
using Koneko.Scripting;

namespace Koneko.Tests.HelloHaxe
{
	public class SignalTest : LuaNode
	{
		public override void _Ready()
		{
			_luaEnviroment.AddPlugin(typeof(TestPlugin));
			string basePath = "res://";
			if (!OS.HasFeature("editor"))
			{
				basePath = OS.GetExecutablePath().GetBaseDir() + "/";
			}
			StartFromPath(basePath + "Tests/SignalTest/");
		}
	}
}
