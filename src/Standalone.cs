using Godot;
using Bolt.Scripting;
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

		//string argstr = string.Join(" ", args);
        //GD.Print(argstr);
        //GD.Print(System.IO.Path.GetFullPath("./"));

		for(var i = 0; i < args.Length; i++)
		{
			var arg = args[i];
			if (arg.Contains(".lkapp"))
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
				if (file.Contains(".lkapp"))
				{
					path = file;
					break;
				}
			}
			if (string.IsNullOrEmpty(path))
			{
				OS.Alert("directory or 'lkapp' file not provided", "ERROR");
				GetTree().Quit();
				return;
			}
			
		}

		path = IoPath.GetFullPath(path);

		if (path.EndsWith(".lkapp"))
			StartFromLKProject(path);
		else
			StartFromPath(path);


		OS.WindowBorderless = false;
		OS.WindowResizable = true;
		OS.WindowSize = new Vector2(1024, 600);
		OS.CenterWindow();
	}
}
