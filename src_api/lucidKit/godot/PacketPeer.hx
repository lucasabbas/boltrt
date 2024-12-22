package lucidKit.godot;

@:native("godot.PacketPeer")
extern class PacketPeer extends Reference {
    public var allowObjectDecoding: Bool;
    public var encodeBufferMaxSize: Int;
    public function getAvailablePacketCount(): Int;
    public function getPacket(): PoolByteArray;
    public function getPacketError(): Int;
    public function getVar(allowObjects: Bool = false): Variant;
    public function putPacket(buffer: PoolByteArray): Int;
    public function putVar(Var: Variant, fullObjects: Bool = false): Int;
    @:native("__new")
    public function new();
}
