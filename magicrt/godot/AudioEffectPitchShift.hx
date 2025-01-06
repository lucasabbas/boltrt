package magicrt.godot;

class AudioEffectPitchShiftFftSize {
    public static var Size256: Int = 0;
    public static var Size512: Int = 1;
    public static var Size1024: Int = 2;
    public static var Size2048: Int = 3;
    public static var Size4096: Int = 4;
    public static var Max: Int = 5;
}
class AudioEffectPitchShiftSignalNames {
}
@:native("godot.AudioEffectPitchShift")
extern class AudioEffectPitchShift extends AudioEffect {
    public var fftSize: Int;
    public var oversampling: Int;
    public var pitchScale: Float;
    @:native("__new")
    public function new();
}
