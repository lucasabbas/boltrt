package magicrt.godot;

class AudioEffectSpectrumAnalyzerInstanceSignalNames {
}
@:native("godot.AudioEffectSpectrumAnalyzerInstance")
extern class AudioEffectSpectrumAnalyzerInstance extends AudioEffectInstance {
    public function getMagnitudeForFrequencyRange(fromHz: Float, toHz: Float, mode: Int = 1): Vector2;
    @:native("__new")
    public function new();
}
