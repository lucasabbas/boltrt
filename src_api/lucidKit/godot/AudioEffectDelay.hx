package lucidKit.godot;

@:native("godot.AudioEffectDelay")
extern class AudioEffectDelay extends AudioEffect {
    public var dry: Float;
    public var feedback__active: Bool;
    public var feedback__delay_ms: Float;
    public var feedback__level_db: Float;
    public var feedback__lowpass: Float;
    public var tap1__active: Bool;
    public var tap1__delay_ms: Float;
    public var tap1__level_db: Float;
    public var tap1__pan: Float;
    public var tap2__active: Bool;
    public var tap2__delay_ms: Float;
    public var tap2__level_db: Float;
    public var tap2__pan: Float;
    @:native("__new")
    public function new();
}
