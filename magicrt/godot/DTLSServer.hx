package magicrt.godot;

class DTLSServerSignalNames {
}
@:native("godot.DTLSServer")
extern class DTLSServer extends Reference {
    public function setup(key: CryptoKey, certificate: X509Certificate, chain: X509Certificate): Int;
    public function takeConnection(udpPeer: PacketPeerUDP): PacketPeerDTLS;
    @:native("__new")
    public function new();
}
