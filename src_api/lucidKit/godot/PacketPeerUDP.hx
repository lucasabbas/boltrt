package lucidkit.godot;

@:native("godot.PacketPeerUDP")
extern class PacketPeerUDP extends PacketPeer {
    public function close(): Void;
    public function connect_to_host(host: String, port: Int): Int;
    public function get_packet_ip(): String;
    public function get_packet_port(): Int;
    public function is_connected_to_host(): Bool;
    public function is_listening(): Bool;
    public function join_multicast_group(multicast_address: String, interface_name: String): Int;
    public function leave_multicast_group(multicast_address: String, interface_name: String): Int;
    public function listen(port: Int, bind_address: String, recv_buf_size: Int): Int;
    public function set_broadcast_enabled(enabled: Bool): Void;
    public function set_dest_address(host: String, port: Int): Int;
    public function wait(): Int;
}
