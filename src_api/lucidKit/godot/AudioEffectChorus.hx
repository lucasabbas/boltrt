package lucidKit.godot;

@:native("godot.AudioEffectChorus")
extern class AudioEffectChorus extends AudioEffect {
    public var dry: Float;
    public var voice__1__cutoff_hz: Float;
    public var voice__1__delay_ms: Float;
    public var voice__1__depth_ms: Float;
    public var voice__1__level_db: Float;
    public var voice__1__pan: Float;
    public var voice__1__rate_hz: Float;
    public var voice__2__cutoff_hz: Float;
    public var voice__2__delay_ms: Float;
    public var voice__2__depth_ms: Float;
    public var voice__2__level_db: Float;
    public var voice__2__pan: Float;
    public var voice__2__rate_hz: Float;
    public var voice__3__cutoff_hz: Float;
    public var voice__3__delay_ms: Float;
    public var voice__3__depth_ms: Float;
    public var voice__3__level_db: Float;
    public var voice__3__pan: Float;
    public var voice__3__rate_hz: Float;
    public var voice__4__cutoff_hz: Float;
    public var voice__4__delay_ms: Float;
    public var voice__4__depth_ms: Float;
    public var voice__4__level_db: Float;
    public var voice__4__pan: Float;
    public var voice__4__rate_hz: Float;
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
    @:native("__new")
    public function new();
}
