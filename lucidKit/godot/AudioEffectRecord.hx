package lucidKit.godot;

@:native("godot.AudioEffectRecord")
extern class AudioEffectRecord extends AudioEffect {
    public var format: Int;
    public function getRecording(): AudioStreamSample;
    public function isRecordingActive(): Bool;
    public function setRecordingActive(record: Bool): Void;
    @:native("__new")
    public function new();
}
