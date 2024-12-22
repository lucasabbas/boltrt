package lucidKit.godot;

@:native("godot.NavigationMesh")
extern class NavigationMesh extends Resource {
    public var agent_height: Float;
    public var agent_max_climb: Float;
    public var agent_max_slope: Float;
    public var agent_radius: Float;
    public var cell_height: Float;
    public var cell_size: Float;
    public var detail_sample_distance: Float;
    public var detail_sample_max_error: Float;
    public var edge_max_error: Float;
    public var edge_max_length: Float;
    public var filter_baking_aabb: AABB;
    public var filter_baking_aabb_offset: Vector3;
    public var filter_ledge_spans: Bool;
    public var filter_low_hanging_obstacles: Bool;
    public var filter_walkable_low_height_spans: Bool;
    public var geometry_collision_mask: Int;
    public var geometry_parsed_geometry_type: Int;
    public var geometry_source_geometry_mode: Int;
    public var geometry_source_group_name: String;
    public var polygon_verts_per_poly: Float;
    public var region_merge_size: Float;
    public var region_min_size: Float;
    public var sample_partition_type: Int;
    public function add_polygon(polygon: PoolIntArray): Void;
    public function clear_polygons(): Void;
    public function create_from_mesh(mesh: Mesh): Void;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function get_polygon(idx: Int): PoolIntArray;
    public function get_polygon_count(): Int;
    public function get_vertices(): PoolVector3Array;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    public function set_vertices(vertices: PoolVector3Array): Void;
    @:native("__new")
    public function new();
}
