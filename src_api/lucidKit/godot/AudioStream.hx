package lucidKit.godot;

@:native("godot.AudioStream")
extern class AudioStream extends Resource {
    public function get_length(): Float;
    @:native("__new")
    public function new();
}
