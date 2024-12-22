package lucidkit.godot;

@:native("godot.AnimationNodeBlendTree")
extern class AnimationNodeBlendTree extends AnimationRootNode {
    public var graph_offset: Vector2;
    public function add_node(name: String, node: AnimationNode, position: GdVector2): Void;
    public function connect_node(input_node: String, input_index: Int, output_node: String): Void;
    public function disconnect_node(input_node: String, input_index: Int): Void;
    public function get_node(name: String): AnimationNode;
    public function get_node_position(name: String): Vector2;
    public function has_node(name: String): Bool;
    public function remove_node(name: String): Void;
    public function rename_node(name: String, new_name: String): Void;
    public function set_node_position(name: String, position: GdVector2): Void;
}
