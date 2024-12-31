package lucidKit.godot;

class SkeletonIKPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SkeletonIKPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SkeletonIKSignalNames {
}
@:native("godot.SkeletonIK")
extern class SkeletonIK extends Node {
    public var interpolation: Float;
    public var magnet: Vector3;
    public var maxIterations: Int;
    public var minDistance: Float;
    public var overrideTipBasis: Bool;
    public var rootBone: String;
    public var target: Transform;
    public var targetNode: NodePath;
    public var tipBone: String;
    public var useMagnet: Bool;
    public function getParentSkeleton(): Skeleton;
    public function isRunning(): Bool;
    public function start(oneTime: Bool = false): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
