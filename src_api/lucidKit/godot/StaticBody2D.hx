package lucidKit.godot;

@:native("godot.StaticBody2D")
extern class StaticBody2D extends PhysicsBody2D {
    public var bounce: Float;
    public var constantAngularVelocity: Float;
    public var constantLinearVelocity: Vector2;
    public var friction: Float;
    public var physicsMaterialOverride: PhysicsMaterial;
    @:native("__new")
    public function new();
}
