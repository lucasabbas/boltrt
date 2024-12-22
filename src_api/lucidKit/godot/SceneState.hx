package lucidkit.godot;

@:native("godot.SceneState")
extern class SceneState extends Reference {
    public function get_connection_binds(idx: Int): Array<Dynamic>;
    public function get_connection_count(): Int;
    public function get_connection_flags(idx: Int): Int;
    public function get_connection_method(idx: Int): String;
    public function get_connection_signal(idx: Int): String;
    public function get_connection_source(idx: Int): NodePath;
    public function get_connection_target(idx: Int): NodePath;
    public function get_node_count(): Int;
    public function get_node_groups(idx: Int): PoolStringArray;
    public function get_node_index(idx: Int): Int;
    public function get_node_instance(idx: Int): PackedScene;
    public function get_node_instance_placeholder(idx: Int): String;
    public function get_node_name(idx: Int): String;
    public function get_node_owner_path(idx: Int): NodePath;
    public function get_node_path(idx: Int, for_parent: Bool): NodePath;
    public function get_node_property_count(idx: Int): Int;
    public function get_node_property_name(idx: Int, prop_idx: Int): String;
    public function get_node_property_value(idx: Int, prop_idx: Int): Variant;
    public function get_node_type(idx: Int): String;
    public function is_node_instance_placeholder(idx: Int): Bool;
}
