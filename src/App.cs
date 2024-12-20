using Godot;
using LucidKit.Scripting;
using System;

public class App : LuaNode
{
	public override void _Ready()
	{
		var args = OS.GetCmdlineArgs();

		var path = "./";

		for(var i = 0; i > args.Length; i++)
		{
			var arg = args[i];
			if (arg == "--datapath")
			{
				path = args[i + 1];
				break;
			}
		}

		StartFromPath(path);
	}
}
