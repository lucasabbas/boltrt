package lucidKit.godot;

@:native("godot.AudioEffectPhaser")
extern class AudioEffectPhaser extends AudioEffect {
    public var depth: Float;
    public var feedback: Float;
    public var rangeMaxHz: Float;
    public var rangeMinHz: Float;
    public var rateHz: Float;
    @:native("__new")
    public function new();
}
