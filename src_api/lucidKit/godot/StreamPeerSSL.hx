package lucidKit.godot;

@:native("godot.StreamPeerSSL")
extern class StreamPeerSSL extends StreamPeer {
    public var blockingHandshake: Bool;
    public function acceptStream(stream: StreamPeer, privateKey: CryptoKey, certificate: X509Certificate, chain: X509Certificate): Int;
    public function connectToStream(stream: StreamPeer, validateCerts: Bool = false, forHostname: String, validCertificate: X509Certificate): Int;
    public function disconnectFromStream(): Void;
    public function getStatus(): Int;
    public function poll(): Void;
    @:native("__new")
    public function new();
}
