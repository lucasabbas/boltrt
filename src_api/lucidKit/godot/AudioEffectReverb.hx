package lucidkit.godot;

@:native("godot.AudioEffectReverb")
extern class AudioEffectReverb extends AudioEffect {
    public var damping: Float;
    public var dry: Float;
    public var hipass: Float;
    public var predelay_feedback: Float;
    public var predelay_msec: Float;
    public var room_size: Float;
    public var spread: Float;
    public var wet: Float;
}
