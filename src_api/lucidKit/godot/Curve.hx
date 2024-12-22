package lucidkit.godot;

@:native("godot.Curve")
extern class Curve extends Resource {
    public var bake_resolution: Int;
    public var max_value: Float;
    public var min_value: Float;
    public function add_point(position: GdVector2, left_tangent: Float, right_tangent: Float, left_mode: Int, right_mode: Int): Int;
    public function bake(): Void;
    public function clean_dupes(): Void;
    public function clear_points(): Void;
    public function get_point_count(): Int;
    public function get_point_left_mode(index: Int): Int;
    public function get_point_left_tangent(index: Int): Float;
    public function get_point_position(index: Int): Vector2;
    public function get_point_right_mode(index: Int): Int;
    public function get_point_right_tangent(index: Int): Float;
    public function interpolate(offset: Float): Float;
    public function interpolate_baked(offset: Float): Float;
    public function remove_point(index: Int): Void;
    public function set_point_left_mode(index: Int, mode: Int): Void;
    public function set_point_left_tangent(index: Int, tangent: Float): Void;
    public function set_point_offset(index: Int, offset: Float): Int;
    public function set_point_right_mode(index: Int, mode: Int): Void;
    public function set_point_right_tangent(index: Int, tangent: Float): Void;
    public function set_point_value(index: Int, y: Float): Void;
}
