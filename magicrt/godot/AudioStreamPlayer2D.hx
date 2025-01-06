package magicrt.godot;

class AudioStreamPlayer2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AudioStreamPlayer2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AudioStreamPlayer2DSignalNames {
    public static var finished: String = "finished";
}
@:native("godot.AudioStreamPlayer2D")
extern class AudioStreamPlayer2D extends Node2D {
    public var areaMask: Int;
    public var attenuation: Float;
    public var autoplay: Bool;
    public var bus: String;
    public var maxDistance: Float;
    public var panningStrength: Float;
    public var pitchScale: Float;
    public var playing: Bool;
    public var stream: AudioStream;
    public var streamPaused: Bool;
    public var volumeDb: Float;
    public function getPlaybackPosition(): Float;
    public function getStreamPlayback(): AudioStreamPlayback;
    public function play(fromPosition: Float = 0.0): Void;
    public function seek(toPosition: Float): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
