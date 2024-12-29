package lucidKit.godot;

@:native("godot.NetworkedMultiplayerCustom")
extern class NetworkedMultiplayerCustom extends NetworkedMultiplayerPeer {
    public function deliverPacket(buffer: PoolByteArray, fromPeerId: Int): Void;
    public function initialize(selfPeerId: Int): Void;
    public function setConnectionStatus(connectionStatus: Int): Void;
    public function setMaxPacketSize(maxPacketSize: Int): Void;
    @:native("__new")
    public function new();
}
