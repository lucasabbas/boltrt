using Godot;
using Bolt.Scripting;
using System;

public class Editor : LuaNode
{
    public override void _Ready()
    {
        string basePath = ProjectSettings.GlobalizePath("res://");
        if (!OS.HasFeature("editor"))
            basePath = OS.GetExecutablePath().GetBaseDir();
        if (!basePath.EndsWith("/"))
            basePath += "/";

        var path = System.IO.Path.GetFullPath(".");
        foreach (string file in System.IO.Directory.GetFiles(path))
        {
            if (file.EndsWith(".bolt"))
            {
                _luaEnviroment.Script.Globals["boltFile"] = file;
                break;
            }
        }
        
        var editorPath = basePath + "boltEd/editor.bolt";
        StartFromLKProject(editorPath);

        OS.WindowBorderless = false;
		OS.WindowResizable = true;
		OS.WindowSize = new Vector2(1024, 600);
		OS.CenterWindow();
    }

}
