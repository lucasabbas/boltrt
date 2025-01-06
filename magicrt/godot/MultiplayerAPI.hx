package magicrt.godot;

class MultiplayerAPISignalNames {
    public static var connectedToServer: String = "connected_to_server";
    public static var connectionFailed: String = "connection_failed";
    public static var networkPeerConnected: String = "network_peer_connected";
    public static var networkPeerDisconnected: String = "network_peer_disconnected";
    public static var networkPeerPacket: String = "network_peer_packet";
    public static var serverDisconnected: String = "server_disconnected";
}
@:native("godot.MultiplayerAPI")
extern class MultiplayerAPI extends Reference {
    public var allowObjectDecoding: Bool;
    public var networkPeer: NetworkedMultiplayerPeer;
    public var refuseNewNetworkConnections: Bool;
    public var rootNode: Node;
    public function clear(): Void;
    public function getNetworkConnectedPeers(): PoolIntArray;
    public function getNetworkUniqueId(): Int;
    public function getRpcSenderId(): Int;
    public function hasNetworkPeer(): Bool;
    public function isNetworkServer(): Bool;
    public function poll(): Void;
    public function sendBytes(bytes: Dynamic, id: Int = 0, mode: Int = 2): Int;
    @:native("__new")
    public function new();
}
