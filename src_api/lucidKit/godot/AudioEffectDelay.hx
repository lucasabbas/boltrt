package lucidkit.godot;

@:native("godot.AudioEffectDelay")
extern class AudioEffectDelay extends AudioEffect {
    public var dry: Float;
    public var feedback/active: Bool;
    public var feedback/delay_ms: Float;
    public var feedback/level_db: Float;
    public var feedback/lowpass: Float;
    public var tap1/active: Bool;
    public var tap1/delay_ms: Float;
    public var tap1/level_db: Float;
    public var tap1/pan: Float;
    public var tap2/active: Bool;
    public var tap2/delay_ms: Float;
    public var tap2/level_db: Float;
    public var tap2/pan: Float;
}
