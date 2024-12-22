package lucidkit.godot;

@:native("godot.AESContext")
extern class AESContext extends Reference {
    public function finish(): Void;
    public function get_iv_state(): PoolByteArray;
    public function start(mode: Int, key: PoolByteArray, iv: PoolByteArray): Int;
    public function update(src: PoolByteArray): PoolByteArray;
}
