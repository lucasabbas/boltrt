package lucidKit.godot;

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
