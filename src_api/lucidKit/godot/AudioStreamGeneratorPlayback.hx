package lucidkit.godot;

@:native("godot.AudioStreamGeneratorPlayback")
extern class AudioStreamGeneratorPlayback extends AudioStreamPlaybackResampled {
    public function can_push_buffer(amount: Int): Bool;
    public function clear_buffer(): Void;
    public function get_frames_available(): Int;
    public function get_skips(): Int;
    public function push_buffer(frames: PoolVector2Array): Bool;
    public function push_frame(frame: GdVector2): Bool;
}
