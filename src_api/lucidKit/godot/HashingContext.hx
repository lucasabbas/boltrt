package lucidkit.godot;

@:native("godot.HashingContext")
extern class HashingContext extends Reference {
    public function finish(): PoolByteArray;
    public function start(type: Int): Int;
    public function update(chunk: PoolByteArray): Int;
}
