package lucidkit.godot;

@:native("godot.AudioStreamSample")
extern class AudioStreamSample extends AudioStream {
    public var data: PoolByteArray;
    public var format: Int;
    public var loop_begin: Int;
    public var loop_end: Int;
    public var loop_mode: Int;
    public var mix_rate: Int;
    public var stereo: Bool;
    public function save_to_wav(path: String): Int;
}
