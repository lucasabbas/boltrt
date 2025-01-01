package bolt.godot;

class AudioEffectDistortionMode {
    public static var Clip: Int = 0;
    public static var Atan: Int = 1;
    public static var Lofi: Int = 2;
    public static var Overdrive: Int = 3;
    public static var Waveshape: Int = 4;
}
class AudioEffectDistortionSignalNames {
}
@:native("godot.AudioEffectDistortion")
extern class AudioEffectDistortion extends AudioEffect {
    public var drive: Float;
    public var keepHfHz: Float;
    public var mode: Int;
    public var postGain: Float;
    public var preGain: Float;
    @:native("__new")
    public function new();
}
