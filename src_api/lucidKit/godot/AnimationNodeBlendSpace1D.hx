package lucidKit.godot;

@:native("godot.AnimationNodeBlendSpace1D")
extern class AnimationNodeBlendSpace1D extends AnimationRootNode {
    public var max_space: Float;
    public var min_space: Float;
    public var snap: Float;
    public var value_label: String;
    public function add_blend_point(node: AnimationRootNode, pos: Float, at_index: Int): Void;
    public function get_blend_point_count(): Int;
    public function get_blend_point_node(point: Int): AnimationRootNode;
    public function get_blend_point_position(point: Int): Float;
    public function remove_blend_point(point: Int): Void;
    public function set_blend_point_node(point: Int, node: AnimationRootNode): Void;
    public function set_blend_point_position(point: Int, pos: Float): Void;
    @:native("__new")
    public function new();
}
