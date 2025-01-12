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
			if (arg.Contains(".bolt") || arg.Contains(".btz") || arg.Contains(".btzip") || arg.EndsWith(".bta"))
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
				if (file.Contains(".bolt") || file.Contains(".btz") || file.Contains(".btzip") || file.EndsWith(".bta"))
				{
					path = file;
					break;
				}
			}
			if (string.IsNullOrEmpty(path))
			{
				OS.Alert("directory, '.bolt', '.btz', '.btzip', or '.bta' file not provided", "ERROR");
				GetTree().Quit();
				return;
			}
			
		}

		path = IoPath.GetFullPath(path);

		if (path.EndsWith(".bolt"))
			StartFromLKProject(path);
		else if (path.EndsWith(".btz") || path.EndsWith(".btzip") || path.EndsWith(".bta"))
			StartFromZipFilePath(path);
		else
			StartFromPath(path);


		//OS.WindowBorderless = false;
		//OS.WindowResizable = true;
		//OS.WindowSize = new Vector2(1024, 600);
		//OS.CenterWindow();
	}
}
