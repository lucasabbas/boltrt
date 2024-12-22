package lucidKit.godot;

@:native("godot.WeakRef")
extern class WeakRef extends Reference {
    public function get_ref(): Variant;
    @:native("__new")
    public function new();
}
