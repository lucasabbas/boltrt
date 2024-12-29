package lucidKit.godot;

@:native("godot.AudioEffectStereoEnhance")
extern class AudioEffectStereoEnhance extends AudioEffect {
    public var panPullout: Float;
    public var surround: Float;
    public var timePulloutMs: Float;
    @:native("__new")
    public function new();
}
