package lucidkit.godot;

@:native("godot.TCP_Server")
extern class TCP_Server extends Reference {
    public function is_connection_available(): Bool;
    public function is_listening(): Bool;
    public function listen(port: Int, bind_address: String): Int;
    public function stop(): Void;
    public function take_connection(): StreamPeerTCP;
}
