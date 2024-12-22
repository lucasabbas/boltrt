package lucidKit.godot;

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
    public function sendBytes(bytes: PoolByteArray, id: Int = 0, mode: Int = 2): Int;
    @:native("__new")
    public function new();
}
