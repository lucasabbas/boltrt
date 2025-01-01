package bolt.godot;

class AudioEffectDelaySignalNames {
}
@:native("godot.AudioEffectDelay")
extern class AudioEffectDelay extends AudioEffect {
    public var dry: Float;
    public var feedbackActive: Bool;
    public var feedbackDelayMs: Float;
    public var feedbackLevelDb: Float;
    public var feedbackLowpass: Float;
    public var tap1Active: Bool;
    public var tap1DelayMs: Float;
    public var tap1LevelDb: Float;
    public var tap1Pan: Float;
    public var tap2Active: Bool;
    public var tap2DelayMs: Float;
    public var tap2LevelDb: Float;
    public var tap2Pan: Float;
    @:native("__new")
    public function new();
}
