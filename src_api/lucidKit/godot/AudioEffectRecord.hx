package lucidkit.godot;

@:native("godot.AudioEffectRecord")
extern class AudioEffectRecord extends AudioEffect {
    public var format: Int;
    public function get_recording(): AudioStreamSample;
    public function is_recording_active(): Bool;
    public function set_recording_active(record: Bool): Void;
}
