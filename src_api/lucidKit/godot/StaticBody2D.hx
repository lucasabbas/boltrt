package lucidkit.godot;

@:native("godot.StaticBody2D")
extern class StaticBody2D extends PhysicsBody2D {
    public var bounce: Float;
    public var constant_angular_velocity: Float;
    public var constant_linear_velocity: Vector2;
    public var friction: Float;
    public var physics_material_override: PhysicsMaterial;
}
