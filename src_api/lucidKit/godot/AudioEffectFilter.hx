package lucidKit.godot;

@:native("godot.AudioEffectFilter")
extern class AudioEffectFilter extends AudioEffect {
    public var cutoffHz: Float;
    public var db: Int;
    public var gain: Float;
    public var resonance: Float;
    @:native("__new")
    public function new();
}
