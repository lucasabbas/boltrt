package lucidKit.godot;

class NetworkedMultiplayerPeerTransferMode {
    public static var Unreliable: Int = 0;
    public static var UnreliableOrdered: Int = 1;
    public static var Reliable: Int = 2;
}
class NetworkedMultiplayerPeerSignalNames {
    public static var connectionFailed: String = "connection_failed";
    public static var connectionSucceeded: String = "connection_succeeded";
    public static var peerConnected: String = "peer_connected";
    public static var peerDisconnected: String = "peer_disconnected";
    public static var serverDisconnected: String = "server_disconnected";
}
@:native("godot.NetworkedMultiplayerPeer")
extern class NetworkedMultiplayerPeer extends PacketPeer {
    public var refuseNewConnections: Bool;
    public var transferMode: Int;
    public function getConnectionStatus(): Int;
    public function getPacketPeer(): Int;
    public function getUniqueId(): Int;
    public function poll(): Void;
    public function setTargetPeer(id: Int): Void;
    @:native("__new")
    public function new();
}
