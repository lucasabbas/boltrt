package lucidkit.godot;

@:native("godot.Curve2D")
extern class Curve2D extends Resource {
    public var bake_interval: Float;
    public function add_point(position: GdVector2, in: GdVector2, out: GdVector2, index: Int): Void;
    public function clear_points(): Void;
    public function get_baked_length(): Float;
    public function get_baked_points(): PoolVector2Array;
    public function get_closest_offset(to_point: GdVector2): Float;
    public function get_closest_point(to_point: GdVector2): Vector2;
    public function get_point_count(): Int;
    public function get_point_in(idx: Int): Vector2;
    public function get_point_out(idx: Int): Vector2;
    public function get_point_position(idx: Int): Vector2;
    public function interpolate(idx: Int, t: Float): Vector2;
    public function interpolate_baked(offset: Float, cubic: Bool): Vector2;
    public function interpolatef(fofs: Float): Vector2;
    public function remove_point(idx: Int): Void;
    public function set_point_in(idx: Int, position: GdVector2): Void;
    public function set_point_out(idx: Int, position: GdVector2): Void;
    public function set_point_position(idx: Int, position: GdVector2): Void;
    public function tessellate(max_stages: Int, tolerance_degrees: Float): PoolVector2Array;
}
