package bolt.godot;

class PacketPeerSignalNames {
}
@:native("godot.PacketPeer")
extern class PacketPeer extends Reference {
    public var allowObjectDecoding: Bool;
    public var encodeBufferMaxSize: Int;
    public function getAvailablePacketCount(): Int;
    public function getPacket(): Dynamic;
    public function getPacketError(): Int;
    public function getVar(allowObjects: Bool = false): Dynamic;
    public function putPacket(buffer: Dynamic): Int;
    public function putVar(Var: Dynamic, fullObjects: Bool = false): Int;
    @:native("__new")
    public function new();
}
