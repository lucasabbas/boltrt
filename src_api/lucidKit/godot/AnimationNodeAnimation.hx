package lucidKit.godot;

@:native("godot.AnimationNodeAnimation")
extern class AnimationNodeAnimation extends AnimationRootNode {
    public var animation: String;
    @:native("__new")
    public function new();
}
