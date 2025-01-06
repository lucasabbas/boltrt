using Godot;
using System;
using MagicRt.Scripting;

public class HelloWorld : LuaNode
{
    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
        StartFromPath("res://Tests/HelloWorld/data/");
    }
}
