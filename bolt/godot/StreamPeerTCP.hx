package bolt.godot;

class StreamPeerTCPSignalNames {
}
@:native("godot.StreamPeerTCP")
extern class StreamPeerTCP extends StreamPeer {
    public function connectToHost(host: String, port: Int): Int;
    public function disconnectFromHost(): Void;
    public function getConnectedHost(): String;
    public function getConnectedPort(): Int;
    public function getStatus(): Int;
    public function isConnectedToHost(): Bool;
    public function setNoDelay(enabled: Bool): Void;
    @:native("__new")
    public function new();
}
