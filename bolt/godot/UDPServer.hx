package bolt.godot;

class UDPServerSignalNames {
}
@:native("godot.UDPServer")
extern class UDPServer extends Reference {
    public var maxPendingConnections: Int;
    public function isConnectionAvailable(): Bool;
    public function isListening(): Bool;
    public function listen(port: Int, bindAddress: String): Int;
    public function poll(): Int;
    public function stop(): Void;
    public function takeConnection(): PacketPeerUDP;
    @:native("__new")
    public function new();
}
