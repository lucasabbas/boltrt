package lucidKit.godot;

@:native("godot.AudioEffectEQ")
extern class AudioEffectEQ extends AudioEffect {
    public function get_band_count(): Int;
    public function get_band_gain_db(band_idx: Int): Float;
    public function set_band_gain_db(band_idx: Int, volume_db: Float): Void;
    @:native("__new")
    public function new();
}
