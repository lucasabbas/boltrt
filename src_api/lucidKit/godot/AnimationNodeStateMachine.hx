package lucidkit.godot;

@:native("godot.AnimationNodeStateMachine")
extern class AnimationNodeStateMachine extends AnimationRootNode {
    public function add_node(name: String, node: AnimationNode, position: GdVector2): Void;
    public function add_transition(from: String, to: String, transition: AnimationNodeStateMachineTransition): Void;
    public function get_end_node(): String;
    public function get_graph_offset(): Vector2;
    public function get_node(name: String): AnimationNode;
    public function get_node_name(node: AnimationNode): String;
    public function get_node_position(name: String): Vector2;
    public function get_start_node(): String;
    public function get_transition(idx: Int): AnimationNodeStateMachineTransition;
    public function get_transition_count(): Int;
    public function get_transition_from(idx: Int): String;
    public function get_transition_to(idx: Int): String;
    public function has_node(name: String): Bool;
    public function has_transition(from: String, to: String): Bool;
    public function remove_node(name: String): Void;
    public function remove_transition(from: String, to: String): Void;
    public function remove_transition_by_index(idx: Int): Void;
    public function rename_node(name: String, new_name: String): Void;
    public function replace_node(name: String, node: AnimationNode): Void;
    public function set_end_node(name: String): Void;
    public function set_graph_offset(offset: GdVector2): Void;
    public function set_node_position(name: String, position: GdVector2): Void;
    public function set_start_node(name: String): Void;
}
