package lucidkit.godot;

@:native("godot.WeakRef")
extern class WeakRef extends Reference {
    public function get_ref(): Variant;
}
