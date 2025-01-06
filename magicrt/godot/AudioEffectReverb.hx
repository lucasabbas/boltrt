package magicrt.godot;

class AudioEffectReverbSignalNames {
}
@:native("godot.AudioEffectReverb")
extern class AudioEffectReverb extends AudioEffect {
    public var damping: Float;
    public var dry: Float;
    public var hipass: Float;
    public var predelayFeedback: Float;
    public var predelayMsec: Float;
    public var roomSize: Float;
    public var spread: Float;
    public var wet: Float;
    @:native("__new")
    public function new();
}
