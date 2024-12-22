package lucidKit.godot;

@:native("godot.AudioEffectAmplify")
extern class AudioEffectAmplify extends AudioEffect {
    public var volume_db: Float;
    @:native("__new")
    public function new();
}
