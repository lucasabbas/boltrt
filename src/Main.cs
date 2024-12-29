using Godot;
using System;

public class Main : Node
{
    public override void _Ready()
    {
        bool editorMode = false;

        var args = OS.GetCmdlineArgs();
        for (int i = 0; i < args.Length; i++)
        {
            if (args[i] == "--dev")
            {
                editorMode = true;
                break;
            }
        }

        if (editorMode)
        {
            GetTree().ChangeScene("res://src/Editor.tscn");
        }
        else
        {
            GetTree().ChangeScene("res://src/Runtime.tscn");
        }
    }
}
