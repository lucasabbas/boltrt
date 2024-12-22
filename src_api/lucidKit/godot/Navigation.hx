package lucidkit.godot;

@:native("godot.Navigation")
extern class Navigation extends Spatial {
    public var cell_height: Float;
    public var cell_size: Float;
    public var edge_connection_margin: Float;
    public var navigation_layers: Int;
    public var up_vector: Vector3;
    public function get_closest_point(to_point: GdVector3): Vector3;
    public function get_closest_point_normal(to_point: GdVector3): Vector3;
    public function get_closest_point_owner(to_point: GdVector3): RID;
    public function get_closest_point_to_segment(start: GdVector3, end: GdVector3, use_collision: Bool): Vector3;
    public function get_rid(): RID;
    public function get_simple_path(start: GdVector3, end: GdVector3, optimize: Bool): PoolVector3Array;
}
