package lucidkit.godot;

@:native("godot.AudioEffectPitchShift")
extern class AudioEffectPitchShift extends AudioEffect {
    public var fft_size: Int;
    public var oversampling: Int;
    public var pitch_scale: Float;
}
