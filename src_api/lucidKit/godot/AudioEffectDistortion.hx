package lucidkit.godot;

@:native("godot.AudioEffectDistortion")
extern class AudioEffectDistortion extends AudioEffect {
    public var drive: Float;
    public var keep_hf_hz: Float;
    public var mode: Int;
    public var post_gain: Float;
    public var pre_gain: Float;
}
