package lucidkit.godot;

@:native("godot.AStar")
extern class AStar extends Reference {
    public function _compute_cost(from_id: Int, to_id: Int): Float;
    public function _estimate_cost(from_id: Int, to_id: Int): Float;
    public function add_point(id: Int, position: GdVector3, weight_scale: Float): Void;
    public function are_points_connected(id: Int, to_id: Int, bidirectional: Bool): Bool;
    public function clear(): Void;
    public function connect_points(id: Int, to_id: Int, bidirectional: Bool): Void;
    public function disconnect_points(id: Int, to_id: Int, bidirectional: Bool): Void;
    public function get_available_point_id(): Int;
    public function get_closest_point(to_position: GdVector3, include_disabled: Bool): Int;
    public function get_closest_position_in_segment(to_position: GdVector3): Vector3;
    public function get_id_path(from_id: Int, to_id: Int): PoolIntArray;
    public function get_point_capacity(): Int;
    public function get_point_connections(id: Int): PoolIntArray;
    public function get_point_count(): Int;
    public function get_point_path(from_id: Int, to_id: Int): PoolVector3Array;
    public function get_point_position(id: Int): Vector3;
    public function get_point_weight_scale(id: Int): Float;
    public function get_points(): Array<Dynamic>;
    public function has_point(id: Int): Bool;
    public function is_point_disabled(id: Int): Bool;
    public function remove_point(id: Int): Void;
    public function reserve_space(num_nodes: Int): Void;
    public function set_point_disabled(id: Int, disabled: Bool): Void;
    public function set_point_position(id: Int, position: GdVector3): Void;
    public function set_point_weight_scale(id: Int, weight_scale: Float): Void;
}
