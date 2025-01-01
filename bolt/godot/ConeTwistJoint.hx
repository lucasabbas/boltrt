package bolt.godot;

class ConeTwistJointMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ConeTwistJointPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ConeTwistJointPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ConeTwistJointSignalNames {
}
@:native("godot.ConeTwistJoint")
extern class ConeTwistJoint extends Joint {
    public var bias: Float;
    public var relaxation: Float;
    public var softness: Float;
    public var swingSpan: Float;
    public var twistSpan: Float;
    public function getParam(param: Int): Float;
    public function setParam(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
