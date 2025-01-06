package magicrt.godot;

class WeakRefSignalNames {
}
@:native("godot.WeakRef")
extern class WeakRef extends Reference {
    public function getRef(): Dynamic;
    @:native("__new")
    public function new();
}
