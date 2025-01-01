package bolt.godot;

class StaticBodyMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class StaticBodyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class StaticBodyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class StaticBodySignalNames {
}
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
