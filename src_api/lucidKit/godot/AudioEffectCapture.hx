package lucidkit.godot;

@:native("godot.AudioEffectCapture")
extern class AudioEffectCapture extends AudioEffect {
    public var buffer_length: Float;
    public function can_get_buffer(frames: Int): Bool;
    public function clear_buffer(): Void;
    public function get_buffer(frames: Int): PoolVector2Array;
    public function get_buffer_length_frames(): Int;
    public function get_discarded_frames(): Int;
    public function get_frames_available(): Int;
    public function get_pushed_frames(): Int;
}
