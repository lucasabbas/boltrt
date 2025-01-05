package bolt.godot;

class StreamPeerBufferSignalNames {
}
@:native("godot.StreamPeerBuffer")
extern class StreamPeerBuffer extends StreamPeer {
    public var dataArray: Dynamic;
    public function clear(): Void;
    public function duplicate(): StreamPeerBuffer;
    public function getPosition(): Int;
    public function getSize(): Int;
    public function resize(size: Int): Void;
    public function seek(position: Int): Void;
    @:native("__new")
    public function new();
}
