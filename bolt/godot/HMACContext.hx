package bolt.godot;

class HMACContextSignalNames {
}
@:native("godot.HMACContext")
extern class HMACContext extends Reference {
    public function finish(): Dynamic;
    public function start(hashType: Int, key: Dynamic): Int;
    public function update(data: Dynamic): Int;
    @:native("__new")
    public function new();
}
