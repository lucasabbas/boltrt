package lucidKit.godot;

@:native("godot.AnimatedSprite")
extern class AnimatedSprite extends Node2D {
    public var animation: String;
    public var centered: Bool;
    public var flipH: Bool;
    public var flipV: Bool;
    public var frame: Int;
    public var frames: SpriteFrames;
    public var offset: Vector2;
    public var playing: Bool;
    public var speedScale: Float;
    public function play(anim: String, backwards: Bool = false): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
