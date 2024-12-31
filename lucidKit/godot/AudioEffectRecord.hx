package lucidKit.godot;

class AudioEffectRecordFormat {
    public static var Format8Bits: Int = 0;
    public static var Format16Bits: Int = 1;
    public static var ImaAdpcm: Int = 2;
}
class AudioEffectRecordSignalNames {
}
@:native("godot.AudioEffectRecord")
extern class AudioEffectRecord extends AudioEffect {
    public var format: Int;
    public function getRecording(): AudioStreamSample;
    public function isRecordingActive(): Bool;
    public function setRecordingActive(record: Bool): Void;
    @:native("__new")
    public function new();
}
