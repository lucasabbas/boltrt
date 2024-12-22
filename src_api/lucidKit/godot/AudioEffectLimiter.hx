package lucidKit.godot;

@:native("godot.AudioEffectLimiter")
extern class AudioEffectLimiter extends AudioEffect {
    public var ceiling_db: Float;
    public var soft_clip_db: Float;
    public var soft_clip_ratio: Float;
    public var threshold_db: Float;
    @:native("__new")
    public function new();
}
