package lucidKit.godot;

class Generic6DOFJointMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Generic6DOFJointPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Generic6DOFJointPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Generic6DOFJointSignalNames {
}
@:native("godot.Generic6DOFJoint")
extern class Generic6DOFJoint extends Joint {
    public var angularLimitXDamping: Float;
    public var angularLimitXEnabled: Bool;
    public var angularLimitXErp: Float;
    public var angularLimitXForceLimit: Float;
    public var angularLimitXLowerAngle: Float;
    public var angularLimitXRestitution: Float;
    public var angularLimitXSoftness: Float;
    public var angularLimitXUpperAngle: Float;
    public var angularLimitYDamping: Float;
    public var angularLimitYEnabled: Bool;
    public var angularLimitYErp: Float;
    public var angularLimitYForceLimit: Float;
    public var angularLimitYLowerAngle: Float;
    public var angularLimitYRestitution: Float;
    public var angularLimitYSoftness: Float;
    public var angularLimitYUpperAngle: Float;
    public var angularLimitZDamping: Float;
    public var angularLimitZEnabled: Bool;
    public var angularLimitZErp: Float;
    public var angularLimitZForceLimit: Float;
    public var angularLimitZLowerAngle: Float;
    public var angularLimitZRestitution: Float;
    public var angularLimitZSoftness: Float;
    public var angularLimitZUpperAngle: Float;
    public var angularMotorXEnabled: Bool;
    public var angularMotorXForceLimit: Float;
    public var angularMotorXTargetVelocity: Float;
    public var angularMotorYEnabled: Bool;
    public var angularMotorYForceLimit: Float;
    public var angularMotorYTargetVelocity: Float;
    public var angularMotorZEnabled: Bool;
    public var angularMotorZForceLimit: Float;
    public var angularMotorZTargetVelocity: Float;
    public var angularSpringXDamping: Float;
    public var angularSpringXEnabled: Bool;
    public var angularSpringXEquilibriumPoint: Float;
    public var angularSpringXStiffness: Float;
    public var angularSpringYDamping: Float;
    public var angularSpringYEnabled: Bool;
    public var angularSpringYEquilibriumPoint: Float;
    public var angularSpringYStiffness: Float;
    public var angularSpringZDamping: Float;
    public var angularSpringZEnabled: Bool;
    public var angularSpringZEquilibriumPoint: Float;
    public var angularSpringZStiffness: Float;
    public var linearLimitXDamping: Float;
    public var linearLimitXEnabled: Bool;
    public var linearLimitXLowerDistance: Float;
    public var linearLimitXRestitution: Float;
    public var linearLimitXSoftness: Float;
    public var linearLimitXUpperDistance: Float;
    public var linearLimitYDamping: Float;
    public var linearLimitYEnabled: Bool;
    public var linearLimitYLowerDistance: Float;
    public var linearLimitYRestitution: Float;
    public var linearLimitYSoftness: Float;
    public var linearLimitYUpperDistance: Float;
    public var linearLimitZDamping: Float;
    public var linearLimitZEnabled: Bool;
    public var linearLimitZLowerDistance: Float;
    public var linearLimitZRestitution: Float;
    public var linearLimitZSoftness: Float;
    public var linearLimitZUpperDistance: Float;
    public var linearMotorXEnabled: Bool;
    public var linearMotorXForceLimit: Float;
    public var linearMotorXTargetVelocity: Float;
    public var linearMotorYEnabled: Bool;
    public var linearMotorYForceLimit: Float;
    public var linearMotorYTargetVelocity: Float;
    public var linearMotorZEnabled: Bool;
    public var linearMotorZForceLimit: Float;
    public var linearMotorZTargetVelocity: Float;
    public var linearSpringXDamping: Float;
    public var linearSpringXEnabled: Bool;
    public var linearSpringXEquilibriumPoint: Float;
    public var linearSpringXStiffness: Float;
    public var linearSpringYDamping: Float;
    public var linearSpringYEnabled: Bool;
    public var linearSpringYEquilibriumPoint: Float;
    public var linearSpringYStiffness: Float;
    public var linearSpringZDamping: Float;
    public var linearSpringZEnabled: Bool;
    public var linearSpringZEquilibriumPoint: Float;
    public var linearSpringZStiffness: Float;
    public function getFlagX(flag: Int): Bool;
    public function getFlagY(flag: Int): Bool;
    public function getFlagZ(flag: Int): Bool;
    public function getParamX(param: Int): Float;
    public function getParamY(param: Int): Float;
    public function getParamZ(param: Int): Float;
    public function setFlagX(flag: Int, value: Bool): Void;
    public function setFlagY(flag: Int, value: Bool): Void;
    public function setFlagZ(flag: Int, value: Bool): Void;
    public function setParamX(param: Int, value: Float): Void;
    public function setParamY(param: Int, value: Float): Void;
    public function setParamZ(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
