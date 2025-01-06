package magicrt.godot;

class VehicleBodyMode {
    public static var Rigid: Int = 0;
    public static var Static: Int = 1;
    public static var Character: Int = 2;
    public static var Kinematic: Int = 3;
}
class VehicleBodyMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VehicleBodyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VehicleBodyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VehicleBodySignalNames {
}
@:native("godot.VehicleBody")
extern class VehicleBody extends RigidBody {
    public var brake: Float;
    public var engineForce: Float;
    public var steering: Float;
    @:native("__new")
    public function new();
}
