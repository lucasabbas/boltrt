package bolt.godot;

class AudioStreamPlayerMixTarget {
    public static var Stereo: Int = 0;
    public static var Surround: Int = 1;
    public static var Center: Int = 2;
}
class AudioStreamPlayerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AudioStreamPlayerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AudioStreamPlayerSignalNames {
    public static var finished: String = "finished";
}
@:native("godot.AudioStreamPlayer")
extern class AudioStreamPlayer extends Node {
    public var autoplay: Bool;
    public var bus: String;
    public var mixTarget: Int;
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
