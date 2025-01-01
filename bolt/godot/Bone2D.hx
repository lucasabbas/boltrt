package bolt.godot;

class Bone2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Bone2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Bone2DSignalNames {
}
@:native("godot.Bone2D")
extern class Bone2D extends Node2D {
    public var defaultLength: Float;
    public var rest: Transform2D;
    public function applyRest(): Void;
    public function getIndexInSkeleton(): Int;
    public function getSkeletonRest(): Transform2D;
    @:native("__new")
    public function new();
}
