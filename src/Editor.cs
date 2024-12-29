using Godot;
using LucidKit.Scripting;
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

        var editorPath = basePath + "data/editor/editor.lkproj";
        StartFromLKProject(editorPath);

        OS.WindowBorderless = false;
		OS.WindowResizable = true;
		OS.WindowSize = new Vector2(1024, 600);
		OS.CenterWindow();
    }

}
