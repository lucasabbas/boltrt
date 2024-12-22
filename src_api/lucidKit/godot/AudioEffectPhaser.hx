package lucidkit.godot;

@:native("godot.AudioEffectPhaser")
extern class AudioEffectPhaser extends AudioEffect {
    public var depth: Float;
    public var feedback: Float;
    public var range_max_hz: Float;
    public var range_min_hz: Float;
    public var rate_hz: Float;
}
