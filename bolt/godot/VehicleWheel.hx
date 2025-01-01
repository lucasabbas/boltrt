package bolt.godot;

class VehicleWheelMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VehicleWheelPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class VehicleWheelPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class VehicleWheelSignalNames {
}
@:native("godot.VehicleWheel")
extern class VehicleWheel extends Spatial {
    public var brake: Float;
    public var dampingCompression: Float;
    public var dampingRelaxation: Float;
    public var engineForce: Float;
    public var steering: Float;
    public var suspensionMaxForce: Float;
    public var suspensionStiffness: Float;
    public var suspensionTravel: Float;
    public var useAsSteering: Bool;
    public var useAsTraction: Bool;
    public var wheelFrictionSlip: Float;
    public var wheelRadius: Float;
    public var wheelRestLength: Float;
    public var wheelRollInfluence: Float;
    public function getContactBody(): Spatial;
    public function getRpm(): Float;
    public function getSkidinfo(): Float;
    public function isInContact(): Bool;
    @:native("__new")
    public function new();
}
