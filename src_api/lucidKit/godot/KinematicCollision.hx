package lucidKit.godot;

@:native("godot.KinematicCollision")
extern class KinematicCollision extends Reference {
    public var collider: Object;
    public var collider_id: Int;
    public var collider_metadata: Variant;
    public var collider_rid: RID;
    public var collider_shape: Object;
    public var collider_shape_index: Int;
    public var collider_velocity: Vector3;
    public var local_shape: Object;
    public var normal: Vector3;
    public var position: Vector3;
    public var remainder: Vector3;
    public var travel: Vector3;
    public function get_angle(up_direction: GdVector3): Float;
    @:native("__new")
    public function new();
}
