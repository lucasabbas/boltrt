package lucidKit.godot;

@:native("godot.Path2D")
extern class Path2D extends Node2D {
    public var curve: Curve2D;
    @:native("__new")
    public function new();
}
