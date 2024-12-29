package lucidKit.godot;

@:native("godot.AudioEffectCompressor")
extern class AudioEffectCompressor extends AudioEffect {
    public var attackUs: Float;
    public var gain: Float;
    public var mix: Float;
    public var ratio: Float;
    public var releaseMs: Float;
    public var sidechain: String;
    public var threshold: Float;
    @:native("__new")
    public function new();
}
