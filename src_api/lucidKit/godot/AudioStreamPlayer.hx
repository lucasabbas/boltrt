package lucidKit.godot;

@:native("godot.AudioStreamPlayer")
extern class AudioStreamPlayer extends Node {
    public var autoplay: Bool;
    public var bus: String;
    public var mix_target: Int;
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
    @:native("__new")
    public function new();
}
