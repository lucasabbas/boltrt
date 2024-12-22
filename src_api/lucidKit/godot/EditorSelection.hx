package lucidkit.godot;

@:native("godot.EditorSelection")
extern class EditorSelection extends Object {
    public function add_node(node: Node): Void;
    public function clear(): Void;
    public function get_selected_nodes(): Array<Dynamic>;
    public function get_transformable_selected_nodes(): Array<Dynamic>;
    public function remove_node(node: Node): Void;
}
