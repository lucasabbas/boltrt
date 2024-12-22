package lucidkit.godot;

@:native("godot.AudioStream")
extern class AudioStream extends Resource {
    public function get_length(): Float;
}
