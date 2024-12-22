using Godot;
using LucidKit.Scripting;
using System;
using System.IO;
using IoPath = System.IO.Path;

public class App : LuaNode
{
	public override void _Ready()
	{
		var args = OS.GetCmdlineArgs();

		var path = "./";

		for(var i = 0; i < args.Length; i++)
		{
			var arg = args[i];
			if (arg.Contains(".lkproj"))
			{
				path = arg;
				break;
			}
			if (arg.StartsWith("--datapath"))
			{
				path = arg.Replace("--datapath=", "");
				break;
			}
		}

		path = IoPath.GetFullPath(path);

		if (path.EndsWith(".lkproj"))
			StartFromLKProject(path);
		else
			StartFromPath(path);
	}
}
