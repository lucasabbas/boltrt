package lucidKit.godot;

@:native("godot.VideoPlayer")
extern class VideoPlayer extends Control {
    public var audioTrack: Int;
    public var autoplay: Bool;
    public var bufferingMsec: Int;
    public var bus: String;
    public var expand: Bool;
    public var loop: Bool;
    public var paused: Bool;
    public var stream: VideoStream;
    public var streamPosition: Float;
    public var volume: Float;
    public var volumeDb: Float;
    public function getStreamName(): String;
    public function getVideoTexture(): Texture;
    public function isPlaying(): Bool;
    public function play(): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
