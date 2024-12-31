package lucidKit.godot;

class HMACContextSignalNames {
}
@:native("godot.HMACContext")
extern class HMACContext extends Reference {
    public function finish(): PoolByteArray;
    public function start(hashType: Int, key: PoolByteArray): Int;
    public function update(data: PoolByteArray): Int;
    @:native("__new")
    public function new();
}
