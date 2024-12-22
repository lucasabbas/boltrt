package lucidkit.godot;

@:native("godot.AudioEffectStereoEnhance")
extern class AudioEffectStereoEnhance extends AudioEffect {
    public var pan_pullout: Float;
    public var surround: Float;
    public var time_pullout_ms: Float;
}
