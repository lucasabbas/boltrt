package lucidKit.godot;

@:native("godot.AudioStreamPlayer3D")
extern class AudioStreamPlayer3D extends Spatial {
    public var areaMask: Int;
    public var attenuationFilterCutoffHz: Float;
    public var attenuationFilterDb: Float;
    public var attenuationModel: Int;
    public var autoplay: Bool;
    public var bus: String;
    public var dopplerTracking: Int;
    public var emissionAngleDegrees: Float;
    public var emissionAngleEnabled: Bool;
    public var emissionAngleFilterAttenuationDb: Float;
    public var maxDb: Float;
    public var maxDistance: Float;
    public var outOfRangeMode: Int;
    public var panningStrength: Float;
    public var pitchScale: Float;
    public var playing: Bool;
    public var stream: AudioStream;
    public var streamPaused: Bool;
    public var unitDb: Float;
    public var unitSize: Float;
    public function getPlaybackPosition(): Float;
    public function getStreamPlayback(): AudioStreamPlayback;
    public function play(fromPosition: Float = 0.0): Void;
    public function seek(toPosition: Float): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
