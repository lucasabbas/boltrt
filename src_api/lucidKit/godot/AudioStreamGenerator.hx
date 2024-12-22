package lucidKit.godot;

@:native("godot.AudioStreamGenerator")
extern class AudioStreamGenerator extends AudioStream {
    public var buffer_length: Float;
    public var mix_rate: Float;
    @:native("__new")
    public function new();
}
