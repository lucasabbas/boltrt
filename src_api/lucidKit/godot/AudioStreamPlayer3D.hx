package lucidKit.godot;

@:native("godot.AudioStreamPlayer3D")
extern class AudioStreamPlayer3D extends Spatial {
    public var area_mask: Int;
    public var attenuation_filter_cutoff_hz: Float;
    public var attenuation_filter_db: Float;
    public var attenuation_model: Int;
    public var autoplay: Bool;
    public var bus: String;
    public var doppler_tracking: Int;
    public var emission_angle_degrees: Float;
    public var emission_angle_enabled: Bool;
    public var emission_angle_filter_attenuation_db: Float;
    public var max_db: Float;
    public var max_distance: Float;
    public var out_of_range_mode: Int;
    public var panning_strength: Float;
    public var pitch_scale: Float;
    public var playing: Bool;
    public var stream: AudioStream;
    public var stream_paused: Bool;
    public var unit_db: Float;
    public var unit_size: Float;
    public function get_playback_position(): Float;
    public function get_stream_playback(): AudioStreamPlayback;
    public function play(from_position: Float): Void;
    public function seek(to_position: Float): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
