package lucidkit.godot;

@:native("godot.AudioEffectChorus")
extern class AudioEffectChorus extends AudioEffect {
    public var dry: Float;
    public var voice/1/cutoff_hz: Float;
    public var voice/1/delay_ms: Float;
    public var voice/1/depth_ms: Float;
    public var voice/1/level_db: Float;
    public var voice/1/pan: Float;
    public var voice/1/rate_hz: Float;
    public var voice/2/cutoff_hz: Float;
    public var voice/2/delay_ms: Float;
    public var voice/2/depth_ms: Float;
    public var voice/2/level_db: Float;
    public var voice/2/pan: Float;
    public var voice/2/rate_hz: Float;
    public var voice/3/cutoff_hz: Float;
    public var voice/3/delay_ms: Float;
    public var voice/3/depth_ms: Float;
    public var voice/3/level_db: Float;
    public var voice/3/pan: Float;
    public var voice/3/rate_hz: Float;
    public var voice/4/cutoff_hz: Float;
    public var voice/4/delay_ms: Float;
    public var voice/4/depth_ms: Float;
    public var voice/4/level_db: Float;
    public var voice/4/pan: Float;
    public var voice/4/rate_hz: Float;
    public var voice_count: Int;
    public var wet: Float;
    public function get_voice_cutoff_hz(voice_idx: Int): Float;
    public function get_voice_delay_ms(voice_idx: Int): Float;
    public function get_voice_depth_ms(voice_idx: Int): Float;
    public function get_voice_level_db(voice_idx: Int): Float;
    public function get_voice_pan(voice_idx: Int): Float;
    public function get_voice_rate_hz(voice_idx: Int): Float;
    public function set_voice_cutoff_hz(voice_idx: Int, cutoff_hz: Float): Void;
    public function set_voice_delay_ms(voice_idx: Int, delay_ms: Float): Void;
    public function set_voice_depth_ms(voice_idx: Int, depth_ms: Float): Void;
    public function set_voice_level_db(voice_idx: Int, level_db: Float): Void;
    public function set_voice_pan(voice_idx: Int, pan: Float): Void;
    public function set_voice_rate_hz(voice_idx: Int, rate_hz: Float): Void;
}
