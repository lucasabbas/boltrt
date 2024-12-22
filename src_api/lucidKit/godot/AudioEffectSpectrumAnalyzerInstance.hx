package lucidkit.godot;

@:native("godot.AudioEffectSpectrumAnalyzerInstance")
extern class AudioEffectSpectrumAnalyzerInstance extends AudioEffectInstance {
    public function get_magnitude_for_frequency_range(from_hz: Float, to_hz: Float, mode: Int): Vector2;
}
