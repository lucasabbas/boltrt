package lucidKit.godot;

@:native("godot.AudioEffectAmplify")
extern class AudioEffectAmplify extends AudioEffect {
    public var volumeDb: Float;
    @:native("__new")
    public function new();
}
