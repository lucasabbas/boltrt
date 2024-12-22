package lucidKit.godot;

@:native("godot.RID")
extern class RID extends lucidKit.core.MonoObject {
    @:native("__new")
    public function new(from: Object);
    public function get_id(): Int;
}
