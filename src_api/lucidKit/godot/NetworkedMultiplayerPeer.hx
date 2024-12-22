package lucidKit.godot;

@:native("godot.NetworkedMultiplayerPeer")
extern class NetworkedMultiplayerPeer extends PacketPeer {
    public var refuse_new_connections: Bool;
    public var transfer_mode: Int;
    public function get_connection_status(): Int;
    public function get_packet_peer(): Int;
    public function get_unique_id(): Int;
    public function poll(): Void;
    public function set_target_peer(id: Int): Void;
    @:native("__new")
    public function new();
}
