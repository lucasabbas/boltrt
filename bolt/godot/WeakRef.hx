package bolt.godot;

class WeakRefSignalNames {
}
@:native("godot.WeakRef")
extern class WeakRef extends Reference {
    public function getRef(): Variant;
    @:native("__new")
    public function new();
}
