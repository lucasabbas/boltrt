package lucidKit.godot;

@:native("godot.HashingContext")
extern class HashingContext extends Reference {
    public function finish(): PoolByteArray;
    public function start(type: Int): Int;
    public function update(chunk: PoolByteArray): Int;
    @:native("__new")
    public function new();
}
