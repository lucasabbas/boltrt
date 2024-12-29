package lucidKit.godot;

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
