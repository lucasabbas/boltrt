package lucidKit.godot;

@:native("godot.AudioEffectSpectrumAnalyzer")
extern class AudioEffectSpectrumAnalyzer extends AudioEffect {
    public var buffer_length: Float;
    public var fft_size: Int;
    public var tap_back_pos: Float;
    @:native("__new")
    public function new();
}
