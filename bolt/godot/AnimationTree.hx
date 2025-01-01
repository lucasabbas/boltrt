package bolt.godot;

class AnimationTreeProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
    public static var Manual: Int = 2;
}
class AnimationTreePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AnimationTreePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AnimationTreeSignalNames {
}
@:native("godot.AnimationTree")
extern class AnimationTree extends Node {
    public var active: Bool;
    public var animPlayer: NodePath;
    public var processMode: Int;
    public var rootMotionTrack: NodePath;
    public var treeRoot: AnimationNode;
    public function advance(delta: Float): Void;
    public function getRootMotionTransform(): Transform;
    public function renameParameter(oldName: String, newName: String): Void;
    @:native("__new")
    public function new();
}
