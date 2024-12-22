package lucidKit.godot;

@:native("godot.MultiplayerAPI")
extern class MultiplayerAPI extends Reference {
    public var allow_object_decoding: Bool;
    public var network_peer: NetworkedMultiplayerPeer;
    public var refuse_new_network_connections: Bool;
    public var root_node: Node;
    public function clear(): Void;
    public function get_network_connected_peers(): PoolIntArray;
    public function get_network_unique_id(): Int;
    public function get_rpc_sender_id(): Int;
    public function has_network_peer(): Bool;
    public function is_network_server(): Bool;
    public function poll(): Void;
    public function send_bytes(bytes: PoolByteArray, id: Int, mode: Int): Int;
    @:native("__new")
    public function new();
}
