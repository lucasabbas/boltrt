package magicrt.godot;

class PinJointMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PinJointPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PinJointPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PinJointSignalNames {
}
@:native("godot.PinJoint")
extern class PinJoint extends Joint {
    public var paramsBias: Float;
    public var paramsDamping: Float;
    public var paramsImpulseClamp: Float;
    public function getParam(param: Int): Float;
    public function setParam(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
