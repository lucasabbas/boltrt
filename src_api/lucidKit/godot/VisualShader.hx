package lucidkit.godot;

@:native("godot.VisualShader")
extern class VisualShader extends Shader {
    public var graph_offset: Vector2;
    public function add_node(type: Int, node: VisualShaderNode, position: GdVector2, id: Int): Void;
    public function can_connect_nodes(type: Int, from_node: Int, from_port: Int, to_node: Int, to_port: Int): Bool;
    public function connect_nodes(type: Int, from_node: Int, from_port: Int, to_node: Int, to_port: Int): Int;
    public function connect_nodes_forced(type: Int, from_node: Int, from_port: Int, to_node: Int, to_port: Int): Void;
    public function disconnect_nodes(type: Int, from_node: Int, from_port: Int, to_node: Int, to_port: Int): Void;
    public function get_node(type: Int, id: Int): VisualShaderNode;
    public function get_node_connections(type: Int): Array<Dynamic>;
    public function get_node_list(type: Int): PoolIntArray;
    public function get_node_position(type: Int, id: Int): Vector2;
    public function get_valid_node_id(type: Int): Int;
    public function is_node_connection(type: Int, from_node: Int, from_port: Int, to_node: Int, to_port: Int): Bool;
    public function remove_node(type: Int, id: Int): Void;
    public function set_mode(mode: Int): Void;
    public function set_node_position(type: Int, id: Int, position: GdVector2): Void;
}
