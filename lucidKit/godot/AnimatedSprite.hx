package lucidKit.godot;

class AnimatedSpritePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AnimatedSpritePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AnimatedSpriteSignalNames {
    public static var animationFinished: String = "animation_finished";
    public static var frameChanged: String = "frame_changed";
}
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
