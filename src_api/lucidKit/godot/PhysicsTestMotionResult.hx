package lucidkit.godot;

@:native("godot.PhysicsTestMotionResult")
extern class PhysicsTestMotionResult extends Reference {
    public var collider: Object;
    public var collider_id: Int;
    public var collider_rid: RID;
    public var collider_shape: Int;
    public var collider_velocity: Vector3;
    public var collision_depth: Float;
    public var collision_normal: Vector3;
    public var collision_point: Vector3;
    public var collision_safe_fraction: Float;
    public var collision_unsafe_fraction: Float;
    public var motion: Vector3;
    public var motion_remainder: Vector3;
}
