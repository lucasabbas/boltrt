package lucidKit.godot;

@:native("godot.Curve3D")
extern class Curve3D extends Resource {
    public var bake_interval: Float;
    public var up_vector_enabled: Bool;
    public function add_point(position: GdVector3, in: GdVector3, out: GdVector3, index: Int): Void;
    public function clear_points(): Void;
    public function get_baked_length(): Float;
    public function get_baked_points(): PoolVector3Array;
    public function get_baked_tilts(): PoolRealArray;
    public function get_baked_up_vectors(): PoolVector3Array;
    public function get_closest_offset(to_point: GdVector3): Float;
    public function get_closest_point(to_point: GdVector3): Vector3;
    public function get_point_count(): Int;
    public function get_point_in(idx: Int): Vector3;
    public function get_point_out(idx: Int): Vector3;
    public function get_point_position(idx: Int): Vector3;
    public function get_point_tilt(idx: Int): Float;
    public function interpolate(idx: Int, t: Float): Vector3;
    public function interpolate_baked(offset: Float, cubic: Bool): Vector3;
    public function interpolate_baked_up_vector(offset: Float, apply_tilt: Bool): Vector3;
    public function interpolatef(fofs: Float): Vector3;
    public function remove_point(idx: Int): Void;
    public function set_point_in(idx: Int, position: GdVector3): Void;
    public function set_point_out(idx: Int, position: GdVector3): Void;
    public function set_point_position(idx: Int, position: GdVector3): Void;
    public function set_point_tilt(idx: Int, tilt: Float): Void;
    public function tessellate(max_stages: Int, tolerance_degrees: Float): PoolVector3Array;
    @:native("__new")
    public function new();
}
