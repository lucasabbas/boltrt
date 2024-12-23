package lucidKit.godot;

@:native("godot.AudioStreamGenerator")
extern class AudioStreamGenerator extends AudioStream {
    public var bufferLength: Float;
    public var mixRate: Float;
    @:native("__new")
    public function new();
}
