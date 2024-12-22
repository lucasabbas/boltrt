package lucidkit.godot;

@:native("godot.NodePath")
extern class NodePath extends lucidkit.core.MonoObject {
    @:native("__new")
    public function new(from: String);
    public function get_as_property_path(): NodePath;
    public function get_concatenated_subnames(): String;
    public function get_name(idx: Int): String;
    public function get_name_count(): Int;
    public function get_subname(idx: Int): String;
    public function get_subname_count(): Int;
    public function is_absolute(): Bool;
    public function is_empty(): Bool;
}
