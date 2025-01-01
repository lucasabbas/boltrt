package bolt.godot;

class PacketPeerUDPSignalNames {
}
@:native("godot.PacketPeerUDP")
extern class PacketPeerUDP extends PacketPeer {
    public function close(): Void;
    public function connectToHost(host: String, port: Int): Int;
    public function getPacketIp(): String;
    public function getPacketPort(): Int;
    public function isConnectedToHost(): Bool;
    public function isListening(): Bool;
    public function joinMulticastGroup(multicastAddress: String, interfaceName: String): Int;
    public function leaveMulticastGroup(multicastAddress: String, interfaceName: String): Int;
    public function listen(port: Int, bindAddress: String, recvBufSize: Int = 65536): Int;
    public function setBroadcastEnabled(enabled: Bool): Void;
    public function setDestAddress(host: String, port: Int): Int;
    public function wait(): Int;
    @:native("__new")
    public function new();
}
