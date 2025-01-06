package magicrt.godot;

class PacketPeerStreamSignalNames {
}
@:native("godot.PacketPeerStream")
extern class PacketPeerStream extends PacketPeer {
    public var inputBufferMaxSize: Int;
    public var outputBufferMaxSize: Int;
    public var streamPeer: StreamPeer;
    @:native("__new")
    public function new();
}
