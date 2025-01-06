using Godot;
using MagicRt.Scripting;
using System;

public class Main : Node
{
	LuaNode _luaNode;
	
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

		if (OS.HasFeature("magicrt-ed"))
			editorMode = true;

		if (OS.GetName() == "HTML5")
		{
			GetTree().ChangeScene("res://src/WebPlayer.tscn");
			return;
		}

		if (editorMode)
		{
			GetTree().ChangeScene("res://src/Editor.tscn");
		}
		else
		{
			GetTree().ChangeScene("res://src/Standalone.tscn");
		}
	}
}
