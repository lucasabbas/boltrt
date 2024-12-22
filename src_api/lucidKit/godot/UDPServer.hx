package lucidKit.godot;

@:native("godot.UDPServer")
extern class UDPServer extends Reference {
    public var max_pending_connections: Int;
    public function is_connection_available(): Bool;
    public function is_listening(): Bool;
    public function listen(port: Int, bind_address: String): Int;
    public function poll(): Int;
    public function stop(): Void;
    public function take_connection(): PacketPeerUDP;
    @:native("__new")
    public function new();
}
