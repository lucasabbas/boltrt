package lucidkit.godot;

@:native("godot.AnimatedSprite")
extern class AnimatedSprite extends Node2D {
    public var animation: String;
    public var centered: Bool;
    public var flip_h: Bool;
    public var flip_v: Bool;
    public var frame: Int;
    public var frames: SpriteFrames;
    public var offset: Vector2;
    public var playing: Bool;
    public var speed_scale: Float;
    public function play(anim: String, backwards: Bool): Void;
    public function stop(): Void;
}
