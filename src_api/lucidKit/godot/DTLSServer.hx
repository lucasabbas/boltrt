package lucidKit.godot;

@:native("godot.DTLSServer")
extern class DTLSServer extends Reference {
    public function setup(key: CryptoKey, certificate: X509Certificate, chain: X509Certificate): Int;
    public function take_connection(udp_peer: PacketPeerUDP): PacketPeerDTLS;
    @:native("__new")
    public function new();
}
