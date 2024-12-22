package lucidkit.godot;

@:native("godot.Physics2DTestMotionResult")
extern class Physics2DTestMotionResult extends Reference {
    public var collider: Object;
    public var collider_id: Int;
    public var collider_rid: RID;
    public var collider_shape: Int;
    public var collider_velocity: Vector2;
    public var collision_depth: Float;
    public var collision_normal: Vector2;
    public var collision_point: Vector2;
    public var collision_safe_fraction: Float;
    public var collision_unsafe_fraction: Float;
    public var motion: Vector2;
    public var motion_remainder: Vector2;
}
