package lucidKit.godot;

@:native("godot.StreamPeerSSL")
extern class StreamPeerSSL extends StreamPeer {
    public var blocking_handshake: Bool;
    public function accept_stream(stream: StreamPeer, private_key: CryptoKey, certificate: X509Certificate, chain: X509Certificate): Int;
    public function connect_to_stream(stream: StreamPeer, validate_certs: Bool, for_hostname: String, valid_certificate: X509Certificate): Int;
    public function disconnect_from_stream(): Void;
    public function get_status(): Int;
    public function poll(): Void;
    @:native("__new")
    public function new();
}
