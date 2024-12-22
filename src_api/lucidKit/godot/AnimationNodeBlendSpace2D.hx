package lucidkit.godot;

@:native("godot.AnimationNodeBlendSpace2D")
extern class AnimationNodeBlendSpace2D extends AnimationRootNode {
    public var auto_triangles: Bool;
    public var blend_mode: Int;
    public var max_space: Vector2;
    public var min_space: Vector2;
    public var snap: Vector2;
    public var x_label: String;
    public var y_label: String;
    public function add_blend_point(node: AnimationRootNode, pos: GdVector2, at_index: Int): Void;
    public function add_triangle(x: Int, y: Int, z: Int, at_index: Int): Void;
    public function get_blend_point_count(): Int;
    public function get_blend_point_node(point: Int): AnimationRootNode;
    public function get_blend_point_position(point: Int): Vector2;
    public function get_triangle_count(): Int;
    public function get_triangle_point(triangle: Int, point: Int): Int;
    public function remove_blend_point(point: Int): Void;
    public function remove_triangle(triangle: Int): Void;
    public function set_blend_point_node(point: Int, node: AnimationRootNode): Void;
    public function set_blend_point_position(point: Int, pos: GdVector2): Void;
}
