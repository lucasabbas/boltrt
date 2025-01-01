package bolt.godot;

class PacketPeerDTLSSignalNames {
}
@:native("godot.PacketPeerDTLS")
extern class PacketPeerDTLS extends PacketPeer {
    public function connectToPeer(packetPeer: PacketPeerUDP, validateCerts: Bool = true, forHostname: String, validCertificate: X509Certificate): Int;
    public function disconnectFromPeer(): Void;
    public function getStatus(): Int;
    public function poll(): Void;
    @:native("__new")
    public function new();
}
