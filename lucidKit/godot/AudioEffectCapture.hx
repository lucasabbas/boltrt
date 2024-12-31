package lucidKit.godot;

class AudioEffectCaptureSignalNames {
}
@:native("godot.AudioEffectCapture")
extern class AudioEffectCapture extends AudioEffect {
    public var bufferLength: Float;
    public function canGetBuffer(frames: Int): Bool;
    public function clearBuffer(): Void;
    public function getBuffer(frames: Int): PoolVector2Array;
    public function getBufferLengthFrames(): Int;
    public function getDiscardedFrames(): Int;
    public function getFramesAvailable(): Int;
    public function getPushedFrames(): Int;
    @:native("__new")
    public function new();
}
