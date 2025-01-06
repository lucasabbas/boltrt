package magicrt.godot;

class HingeJointMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class HingeJointPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class HingeJointPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class HingeJointSignalNames {
}
@:native("godot.HingeJoint")
extern class HingeJoint extends Joint {
    public var angularLimitBias: Float;
    public var angularLimitEnable: Bool;
    public var angularLimitLower: Float;
    public var angularLimitRelaxation: Float;
    public var angularLimitSoftness: Float;
    public var angularLimitUpper: Float;
    public var motorEnable: Bool;
    public var motorMaxImpulse: Float;
    public var motorTargetVelocity: Float;
    public var paramsBias: Float;
    public function getFlag(flag: Int): Bool;
    public function getParam(param: Int): Float;
    public function setFlag(flag: Int, enabled: Bool): Void;
    public function setParam(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
