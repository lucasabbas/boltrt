package magicrt.godot;

class AESContextSignalNames {
}
@:native("godot.AESContext")
extern class AESContext extends Reference {
    public function finish(): Void;
    public function getIvState(): Dynamic;
    public function start(mode: Int, key: Dynamic, iv: Dynamic): Int;
    public function update(src: Dynamic): Dynamic;
    @:native("__new")
    public function new();
}
