package lucidKit.godot;

@:native("godot.AudioEffectDistortion")
extern class AudioEffectDistortion extends AudioEffect {
    public var drive: Float;
    public var keepHfHz: Float;
    public var mode: Int;
    public var postGain: Float;
    public var preGain: Float;
    @:native("__new")
    public function new();
}
