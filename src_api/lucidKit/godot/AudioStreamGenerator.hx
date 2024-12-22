package lucidkit.godot;

@:native("godot.AudioStreamGenerator")
extern class AudioStreamGenerator extends AudioStream {
    public var buffer_length: Float;
    public var mix_rate: Float;
}
