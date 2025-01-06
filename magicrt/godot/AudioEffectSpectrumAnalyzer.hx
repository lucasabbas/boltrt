package magicrt.godot;

class AudioEffectSpectrumAnalyzerFftSize {
    public static var Size256: Int = 0;
    public static var Size512: Int = 1;
    public static var Size1024: Int = 2;
    public static var Size2048: Int = 3;
    public static var Size4096: Int = 4;
    public static var Max: Int = 5;
}
class AudioEffectSpectrumAnalyzerSignalNames {
}
@:native("godot.AudioEffectSpectrumAnalyzer")
extern class AudioEffectSpectrumAnalyzer extends AudioEffect {
    public var bufferLength: Float;
    public var fftSize: Int;
    public var tapBackPos: Float;
    @:native("__new")
    public function new();
}
