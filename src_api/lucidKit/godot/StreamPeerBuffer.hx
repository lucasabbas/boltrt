package lucidKit.godot;

@:native("godot.StreamPeerBuffer")
extern class StreamPeerBuffer extends StreamPeer {
    public var data_array: PoolByteArray;
    public function clear(): Void;
    public function duplicate(): StreamPeerBuffer;
    public function get_position(): Int;
    public function get_size(): Int;
    public function resize(size: Int): Void;
    public function seek(position: Int): Void;
    @:native("__new")
    public function new();
}
