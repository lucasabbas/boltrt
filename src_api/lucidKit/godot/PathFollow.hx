package lucidkit.godot;

@:native("godot.PathFollow")
extern class PathFollow extends Spatial {
    public var cubic_interp: Bool;
    public var h_offset: Float;
    public var loop: Bool;
    public var offset: Float;
    public var rotation_mode: Int;
    public var unit_offset: Float;
    public var v_offset: Float;
}
