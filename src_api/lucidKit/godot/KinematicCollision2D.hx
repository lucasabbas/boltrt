package lucidKit.godot;

@:native("godot.KinematicCollision2D")
extern class KinematicCollision2D extends Reference {
    public var collider: Object;
    public var collider_id: Int;
    public var collider_metadata: Variant;
    public var collider_rid: RID;
    public var collider_shape: Object;
    public var collider_shape_index: Int;
    public var collider_velocity: Vector2;
    public var local_shape: Object;
    public var normal: Vector2;
    public var position: Vector2;
    public var remainder: Vector2;
    public var travel: Vector2;
    public function get_angle(up_direction: GdVector2): Float;
    @:native("__new")
    public function new();
}
