package lucidKit.godot;

class SpringArmMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpringArmPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SpringArmPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpringArmSignalNames {
}
@:native("godot.SpringArm")
extern class SpringArm extends Spatial {
    public var collisionMask: Int;
    public var margin: Float;
    public var shape: Shape;
    public var springLength: Float;
    public function addExcludedObject(RID: RID): Void;
    public function clearExcludedObjects(): Void;
    public function getHitLength(): Float;
    public function removeExcludedObject(RID: RID): Bool;
    @:native("__new")
    public function new();
}
