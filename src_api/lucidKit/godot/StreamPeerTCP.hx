package lucidkit.godot;

@:native("godot.StreamPeerTCP")
extern class StreamPeerTCP extends StreamPeer {
    public function connect_to_host(host: String, port: Int): Int;
    public function disconnect_from_host(): Void;
    public function get_connected_host(): String;
    public function get_connected_port(): Int;
    public function get_status(): Int;
    public function is_connected_to_host(): Bool;
    public function set_no_delay(enabled: Bool): Void;
}
