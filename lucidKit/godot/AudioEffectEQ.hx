package lucidKit.godot;

class AudioEffectEQSignalNames {
}
@:native("godot.AudioEffectEQ")
extern class AudioEffectEQ extends AudioEffect {
    public function getBandCount(): Int;
    public function getBandGainDb(bandIdx: Int): Float;
    public function setBandGainDb(bandIdx: Int, volumeDb: Float): Void;
    @:native("__new")
    public function new();
}
