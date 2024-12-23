package lucidKit.godot;

@:native("godot.StaticBody")
extern class StaticBody extends PhysicsBody {
    public var bounce: Float;
    public var constantAngularVelocity: Vector3;
    public var constantLinearVelocity: Vector3;
    public var friction: Float;
    public var physicsMaterialOverride: PhysicsMaterial;
    @:native("__new")
    public function new();
}
