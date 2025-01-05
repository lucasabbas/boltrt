package bolt.godot;

class HashingContextSignalNames {
}
@:native("godot.HashingContext")
extern class HashingContext extends Reference {
    public function finish(): Dynamic;
    public function start(type: Int): Int;
    public function update(chunk: Dynamic): Int;
    @:native("__new")
    public function new();
}
