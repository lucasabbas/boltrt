package lucidKit.godot;

class AudioStreamPlayer3DAttenuationModel {
    public static var InverseDistance: Int = 0;
    public static var InverseSquareDistance: Int = 1;
    public static var Logarithmic: Int = 2;
    public static var Disabled: Int = 3;
}
class AudioStreamPlayer3DOutOfRangeMode {
    public static var Mix: Int = 0;
    public static var Pause: Int = 1;
}
class AudioStreamPlayer3DDopplerTracking {
    public static var Disabled: Int = 0;
    public static var IdleStep: Int = 1;
    public static var PhysicsStep: Int = 2;
}
class AudioStreamPlayer3DMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AudioStreamPlayer3DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AudioStreamPlayer3DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AudioStreamPlayer3DSignalNames {
    public static var finished: String = "finished";
}
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
