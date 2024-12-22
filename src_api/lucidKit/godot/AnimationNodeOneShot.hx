package lucidKit.godot;

@:native("godot.AnimationNodeOneShot")
extern class AnimationNodeOneShot extends AnimationNode {
    public var autorestart: Bool;
    public var autorestart_delay: Float;
    public var autorestart_random_delay: Float;
    public var fadein_time: Float;
    public var fadeout_time: Float;
    public var mix_mode: Int;
    public var sync: Bool;
    @:native("__new")
    public function new();
}
