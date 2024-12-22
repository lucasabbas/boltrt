package lucidkit.godot;

@:native("godot.AudioStreamPlayer2D")
extern class AudioStreamPlayer2D extends Node2D {
    public var area_mask: Int;
    public var attenuation: Float;
    public var autoplay: Bool;
    public var bus: String;
    public var max_distance: Float;
    public var panning_strength: Float;
    public var pitch_scale: Float;
    public var playing: Bool;
    public var stream: AudioStream;
    public var stream_paused: Bool;
    public var volume_db: Float;
    public function get_playback_position(): Float;
    public function get_stream_playback(): AudioStreamPlayback;
    public function play(from_position: Float): Void;
    public function seek(to_position: Float): Void;
    public function stop(): Void;
}
