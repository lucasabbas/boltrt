package lucidkit.godot;

@:native("godot.VideoPlayer")
extern class VideoPlayer extends Control {
    public var audio_track: Int;
    public var autoplay: Bool;
    public var buffering_msec: Int;
    public var bus: String;
    public var expand: Bool;
    public var loop: Bool;
    public var paused: Bool;
    public var stream: VideoStream;
    public var stream_position: Float;
    public var volume: Float;
    public var volume_db: Float;
    public function get_stream_name(): String;
    public function get_video_texture(): Texture;
    public function is_playing(): Bool;
    public function play(): Void;
    public function stop(): Void;
}
