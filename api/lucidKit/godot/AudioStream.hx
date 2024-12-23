package lucidKit.godot;

@:native("godot.AudioStream")
extern class AudioStream extends Resource {
    public function getLength(): Float;
    @:native("__new")
    public function new();
}
