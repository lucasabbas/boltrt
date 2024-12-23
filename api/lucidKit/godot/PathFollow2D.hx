package lucidKit.godot;

@:native("godot.PathFollow2D")
extern class PathFollow2D extends Node2D {
    public var cubicInterp: Bool;
    public var hOffset: Float;
    public var lookahead: Float;
    public var loop: Bool;
    public var offset: Float;
    public var rotate: Bool;
    public var unitOffset: Float;
    public var vOffset: Float;
    @:native("__new")
    public function new();
}
