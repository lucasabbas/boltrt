package lucidKit.godot;

@:native("godot.HMACContext")
extern class HMACContext extends Reference {
    public function finish(): PoolByteArray;
    public function start(hash_type: Int, key: PoolByteArray): Int;
    public function update(data: PoolByteArray): Int;
    @:native("__new")
    public function new();
}
