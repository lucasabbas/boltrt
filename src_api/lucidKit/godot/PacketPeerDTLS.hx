package lucidKit.godot;

@:native("godot.PacketPeerDTLS")
extern class PacketPeerDTLS extends PacketPeer {
    public function connect_to_peer(packet_peer: PacketPeerUDP, validate_certs: Bool, for_hostname: String, valid_certificate: X509Certificate): Int;
    public function disconnect_from_peer(): Void;
    public function get_status(): Int;
    public function poll(): Void;
    @:native("__new")
    public function new();
}
