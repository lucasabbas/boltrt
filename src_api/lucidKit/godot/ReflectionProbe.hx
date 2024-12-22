package lucidKit.godot;

@:native("godot.ReflectionProbe")
extern class ReflectionProbe extends VisualInstance {
    public var box_projection: Bool;
    public var cull_mask: Int;
    public var enable_shadows: Bool;
    public var extents: Vector3;
    public var intensity: Float;
    public var interior_ambient_color: Color;
    public var interior_ambient_contrib: Float;
    public var interior_ambient_energy: Float;
    public var interior_enable: Bool;
    public var max_distance: Float;
    public var origin_offset: Vector3;
    public var update_mode: Int;
    @:native("__new")
    public function new();
}
