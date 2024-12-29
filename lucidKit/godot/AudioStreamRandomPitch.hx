package lucidKit.godot;

@:native("godot.AudioStreamRandomPitch")
extern class AudioStreamRandomPitch extends AudioStream {
    public var audioStream: AudioStream;
    public var randomPitch: Float;
    @:native("__new")
    public function new();
}