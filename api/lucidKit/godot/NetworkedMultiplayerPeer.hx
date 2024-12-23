package lucidKit.godot;

@:native("godot.NetworkedMultiplayerPeer")
extern class NetworkedMultiplayerPeer extends PacketPeer {
    public var refuseNewConnections: Bool;
    public var transferMode: Int;
    public function getConnectionStatus(): Int;
    public function getPacketPeer(): Int;
    public function getUniqueId(): Int;
    public function poll(): Void;
    public function setTargetPeer(id: Int): Void;
    @:native("__new")
    public function new();
}
