package lucidKit.godot;

@:native("godot.AudioEffectChorus")
extern class AudioEffectChorus extends AudioEffect {
    public var dry: Float;
    public var voice1CutoffHz: Float;
    public var voice1DelayMs: Float;
    public var voice1DepthMs: Float;
    public var voice1LevelDb: Float;
    public var voice1Pan: Float;
    public var voice1RateHz: Float;
    public var voice2CutoffHz: Float;
    public var voice2DelayMs: Float;
    public var voice2DepthMs: Float;
    public var voice2LevelDb: Float;
    public var voice2Pan: Float;
    public var voice2RateHz: Float;
    public var voice3CutoffHz: Float;
    public var voice3DelayMs: Float;
    public var voice3DepthMs: Float;
    public var voice3LevelDb: Float;
    public var voice3Pan: Float;
    public var voice3RateHz: Float;
    public var voice4CutoffHz: Float;
    public var voice4DelayMs: Float;
    public var voice4DepthMs: Float;
    public var voice4LevelDb: Float;
    public var voice4Pan: Float;
    public var voice4RateHz: Float;
    public var voiceCount: Int;
    public var wet: Float;
    public function getVoiceCutoffHz(voiceIdx: Int): Float;
    public function getVoiceDelayMs(voiceIdx: Int): Float;
    public function getVoiceDepthMs(voiceIdx: Int): Float;
    public function getVoiceLevelDb(voiceIdx: Int): Float;
    public function getVoicePan(voiceIdx: Int): Float;
    public function getVoiceRateHz(voiceIdx: Int): Float;
    public function setVoiceCutoffHz(voiceIdx: Int, cutoffHz: Float): Void;
    public function setVoiceDelayMs(voiceIdx: Int, delayMs: Float): Void;
    public function setVoiceDepthMs(voiceIdx: Int, depthMs: Float): Void;
    public function setVoiceLevelDb(voiceIdx: Int, levelDb: Float): Void;
    public function setVoicePan(voiceIdx: Int, pan: Float): Void;
    public function setVoiceRateHz(voiceIdx: Int, rateHz: Float): Void;
    @:native("__new")
    public function new();
}
