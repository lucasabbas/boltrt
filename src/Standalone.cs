using Godot;
using LucidKit.Scripting;
using System;
using System.IO;
using IoPath = System.IO.Path;
using IoDir = System.IO.Directory;

public class Standalone : LuaNode
{
    public override void _Ready()
	{
		var args = OS.GetCmdlineArgs();

		string path = "";

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
		


		if (string.IsNullOrEmpty(path))
		{
			var files = IoDir.GetFiles(IoPath.GetFullPath("./"));
			foreach (var file in files)
			{
				if (file.Contains(".lkproj"))
				{
					path = file;
					break;
				}
			}
			if (string.IsNullOrEmpty(path))
			{
				OS.Alert("directory or 'lkproj' file not provided", "ERROR");
				GetTree().Quit();
				return;
			}
			
		}

		path = IoPath.GetFullPath(path);

		if (path.EndsWith(".lkproj"))
			StartFromLKProject(path);
		else
			StartFromPath(path);


		OS.WindowBorderless = false;
		OS.WindowResizable = true;
		OS.WindowSize = new Vector2(1024, 600);
		OS.CenterWindow();
	}
}
