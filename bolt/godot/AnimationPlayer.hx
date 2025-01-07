package bolt.godot;

class AnimationPlayerPlaybackProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
    public static var Manual: Int = 2;
}
class AnimationPlayerMethodCallMode {
    public static var Deferred: Int = 0;
    public static var Immediate: Int = 1;
}
class AnimationPlayerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AnimationPlayerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AnimationPlayerSignalNames {
    public static var animationChanged: String = "animation_changed";
    public static var animationFinished: String = "animation_finished";
    public static var animationStarted: String = "animation_started";
    public static var cachesCleared: String = "caches_cleared";
}
@:native("godot.AnimationPlayer")
extern class AnimationPlayer extends Node {
    public var assignedAnimation: String;
    public var autoplay: String;
    public var currentAnimation: String;
    public var currentAnimationLength: Float;
    public var currentAnimationPosition: Float;
    public var methodCallMode: Int;
    public var playbackActive: Bool;
    public var playbackDefaultBlendTime: Float;
    public var playbackProcessMode: Int;
    public var playbackSpeed: Float;
    public var resetOnSave: Bool;
    public var rootNode: NodePath;
    public function addAnimation(name: String, animation: Animation): Int;
    public function advance(delta: Float): Void;
    public function animationGetNext(animFrom: String): String;
    public function animationSetNext(animFrom: String, animTo: String): Void;
    public function clearCaches(): Void;
    public function clearQueue(): Void;
    public function findAnimation(animation: Animation): String;
    public function getAnimation(name: String): Animation;
    public function getAnimationList(): lua.Table<Int, String>;
    public function getBlendTime(animFrom: String, animTo: String): Float;
    public function getPlayingSpeed(): Float;
    public function getQueue(): lua.Table<Int, String>;
    public function hasAnimation(name: String): Bool;
    public function isPlaying(): Bool;
    public function play(name: String, customBlend: Float = -1, customSpeed: Float = 1.0, fromEnd: Bool = false): Void;
    public function playBackwards(name: String, customBlend: Float = -1): Void;
    public function queue(name: String): Void;
    public function removeAnimation(name: String): Void;
    public function renameAnimation(name: String, newname: String): Void;
    public function seek(seconds: Float, update: Bool = false): Void;
    public function setBlendTime(animFrom: String, animTo: String, sec: Float): Void;
    public function stop(reset: Bool = true): Void;
    @:native("__new")
    public function new();
}
