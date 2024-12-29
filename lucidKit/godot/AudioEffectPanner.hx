package lucidKit.godot;

@:native("godot.AudioEffectPanner")
extern class AudioEffectPanner extends AudioEffect {
    public var pan: Float;
    @:native("__new")
    public function new();
}
