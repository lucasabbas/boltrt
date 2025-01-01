package bolt.godot;

class AESContextSignalNames {
}
@:native("godot.AESContext")
extern class AESContext extends Reference {
    public function finish(): Void;
    public function getIvState(): PoolByteArray;
    public function start(mode: Int, key: PoolByteArray, iv: PoolByteArray): Int;
    public function update(src: PoolByteArray): PoolByteArray;
    @:native("__new")
    public function new();
}
