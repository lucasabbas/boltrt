package lucidKit.godot;

@:native("godot.Path2D")
extern class Path2D extends Node2D {
    public var curve: Curve2D;
    public var self_modulate: Color;
    @:native("__new")
    public function new();
}
