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

        var editorPath = basePath + "data_editor/editor.lkapp";
        StartFromLKProject(editorPath);

        OS.WindowBorderless = false;
		OS.WindowResizable = true;
		OS.WindowSize = new Vector2(1024, 600);
		OS.CenterWindow();
    }

}
