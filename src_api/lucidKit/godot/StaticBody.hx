package lucidkit.godot;

@:native("godot.StaticBody")
extern class StaticBody extends PhysicsBody {
    public var bounce: Float;
    public var constant_angular_velocity: Vector3;
    public var constant_linear_velocity: Vector3;
    public var friction: Float;
    public var physics_material_override: PhysicsMaterial;
}
