package lucidkit.godot;

@:native("godot.AnimationNode")
extern class AnimationNode extends Resource {
    public var filter_enabled: Bool;
    public function add_input(name: String): Void;
    public function blend_animation(animation: String, time: Float, delta: Float, seeked: Bool, blend: Float): Void;
    public function blend_input(input_index: Int, time: Float, seek: Bool, blend: Float, filter: Int, optimize: Bool): Float;
    public function blend_node(name: String, node: AnimationNode, time: Float, seek: Bool, blend: Float, filter: Int, optimize: Bool): Float;
    public function get_caption(): String;
    public function get_child_by_name(name: String): Object;
    public function get_child_nodes(): Map<Dynamic, Dynamic>;
    public function get_input_count(): Int;
    public function get_input_name(input: Int): String;
    public function get_parameter(name: String): Variant;
    public function get_parameter_default_value(name: String): Variant;
    public function get_parameter_list(): Array<Dynamic>;
    public function has_filter(): Bool;
    public function is_path_filtered(path: NodePath): Bool;
    public function process(time: Float, seek: Bool): Void;
    public function remove_input(index: Int): Void;
    public function set_filter_path(path: NodePath, enable: Bool): Void;
    public function set_parameter(name: String, value: Variant): Void;
}
