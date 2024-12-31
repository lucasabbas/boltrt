package lucidKit.godot;

class PhysicalBoneJointType {
    public static var None: Int = 0;
    public static var Pin: Int = 1;
    public static var Cone: Int = 2;
    public static var Hinge: Int = 3;
    public static var Slider: Int = 4;
    public static var Type6dof: Int = 5;
}
class PhysicalBoneMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PhysicalBonePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PhysicalBonePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PhysicalBoneSignalNames {
}
@:native("godot.PhysicalBone")
extern class PhysicalBone extends PhysicsBody {
    public var bodyOffset: Transform;
    public var bounce: Float;
    public var friction: Float;
    public var gravityScale: Float;
    public var jointOffset: Transform;
    public var jointType: Int;
    public var mass: Float;
    public var weight: Float;
    public function applyCentralImpulse(impulse: GdVector3): Void;
    public function applyImpulse(position: GdVector3, impulse: GdVector3): Void;
    public function getBoneId(): Int;
    public function getSimulatePhysics(): Bool;
    public function isSimulatingPhysics(): Bool;
    public function isStaticBody(): Bool;
    @:native("__new")
    public function new();
}
