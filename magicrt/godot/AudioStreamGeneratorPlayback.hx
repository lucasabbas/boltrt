package magicrt.godot;

class AudioStreamGeneratorPlaybackSignalNames {
}
@:native("godot.AudioStreamGeneratorPlayback")
extern class AudioStreamGeneratorPlayback extends AudioStreamPlaybackResampled {
    public function canPushBuffer(amount: Int): Bool;
    public function clearBuffer(): Void;
    public function getFramesAvailable(): Int;
    public function getSkips(): Int;
    public function pushBuffer(frames: PoolVector2Array): Bool;
    public function pushFrame(frame: GdVector2): Bool;
    @:native("__new")
    public function new();
}
