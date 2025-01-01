package bolt.godot;

class NetworkedMultiplayerCustomTransferMode {
    public static var Unreliable: Int = 0;
    public static var UnreliableOrdered: Int = 1;
    public static var Reliable: Int = 2;
}
class NetworkedMultiplayerCustomSignalNames {
    public static var packetGenerated: String = "packet_generated";
}
@:native("godot.NetworkedMultiplayerCustom")
extern class NetworkedMultiplayerCustom extends NetworkedMultiplayerPeer {
    public function deliverPacket(buffer: PoolByteArray, fromPeerId: Int): Void;
    public function initialize(selfPeerId: Int): Void;
    public function setConnectionStatus(connectionStatus: Int): Void;
    public function setMaxPacketSize(maxPacketSize: Int): Void;
    @:native("__new")
    public function new();
}
