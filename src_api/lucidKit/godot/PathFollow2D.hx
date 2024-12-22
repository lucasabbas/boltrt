package lucidkit.godot;

@:native("godot.PathFollow2D")
extern class PathFollow2D extends Node2D {
    public var cubic_interp: Bool;
    public var h_offset: Float;
    public var lookahead: Float;
    public var loop: Bool;
    public var offset: Float;
    public var rotate: Bool;
    public var unit_offset: Float;
    public var v_offset: Float;
}
