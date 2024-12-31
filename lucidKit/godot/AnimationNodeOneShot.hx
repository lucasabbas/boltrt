package lucidKit.godot;

class AnimationNodeOneShotMixMode {
    public static var Blend: Int = 0;
    public static var Add: Int = 1;
}
class AnimationNodeOneShotSignalNames {
}
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
