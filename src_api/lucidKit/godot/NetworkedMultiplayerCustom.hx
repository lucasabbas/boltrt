package lucidkit.godot;

@:native("godot.NetworkedMultiplayerCustom")
extern class NetworkedMultiplayerCustom extends NetworkedMultiplayerPeer {
    public function deliver_packet(buffer: PoolByteArray, from_peer_id: Int): Void;
    public function initialize(self_peer_id: Int): Void;
    public function set_connection_status(connection_status: Int): Void;
    public function set_max_packet_size(max_packet_size: Int): Void;
}
