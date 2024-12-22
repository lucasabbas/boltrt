package lucidkit.godot;

@:native("godot.PacketPeerStream")
extern class PacketPeerStream extends PacketPeer {
    public var input_buffer_max_size: Int;
    public var output_buffer_max_size: Int;
    public var stream_peer: StreamPeer;
}
