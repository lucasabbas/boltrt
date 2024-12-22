package lucidkit.godot;

@:native("godot.AudioEffectCompressor")
extern class AudioEffectCompressor extends AudioEffect {
    public var attack_us: Float;
    public var gain: Float;
    public var mix: Float;
    public var ratio: Float;
    public var release_ms: Float;
    public var sidechain: String;
    public var threshold: Float;
}
