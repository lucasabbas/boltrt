package lucidKit.godot;

@:native("godot.AudioStreamSample")
extern class AudioStreamSample extends AudioStream {
    public var data: PoolByteArray;
    public var format: Int;
    public var loopBegin: Int;
    public var loopEnd: Int;
    public var loopMode: Int;
    public var mixRate: Int;
    public var stereo: Bool;
    public function saveToWav(path: String): Int;
    @:native("__new")
    public function new();
}
