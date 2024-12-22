package lucidKit.godot;

@:native("godot.AnimationNodeOneShot")
extern class AnimationNodeOneShot extends AnimationNode {
    public var autorestart: Bool;
    public var autorestartDelay: Float;
    public var autorestartRandomDelay: Float;
    public var fadeinTime: Float;
    public var fadeoutTime: Float;
    public var mixMode: Int;
    public var sync: Bool;
    @:native("__new")
    public function new();
}
