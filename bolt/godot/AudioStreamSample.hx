package bolt.godot;

class AudioStreamSampleFormat {
    public static var Format8Bits: Int = 0;
    public static var Format16Bits: Int = 1;
    public static var ImaAdpcm: Int = 2;
}
class AudioStreamSampleLoopMode {
    public static var Disabled: Int = 0;
    public static var Forward: Int = 1;
    public static var PingPong: Int = 2;
    public static var Backward: Int = 3;
}
class AudioStreamSampleSignalNames {
}
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
