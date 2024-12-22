package lucidKit.godot;

@:native("godot.CanvasModulate")
extern class CanvasModulate extends Node2D {
    public var color: Color;
    @:native("__new")
    public function new();
}
