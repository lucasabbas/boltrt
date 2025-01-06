package magicrt.godot;

class TCP_ServerSignalNames {
}
@:native("godot.TCP_Server")
extern class TCP_Server extends Reference {
    public function isConnectionAvailable(): Bool;
    public function isListening(): Bool;
    public function listen(port: Int, bindAddress: String): Int;
    public function stop(): Void;
    public function takeConnection(): StreamPeerTCP;
    @:native("__new")
    public function new();
}
