package lucidKit.godot;

@:native("godot.NavigationServer")
extern class NavigationServer extends Object {
    public function agent_create(): RID;
    public function agent_get_map(agent: RID): RID;
    public function agent_is_map_changed(agent: RID): Bool;
    public function agent_set_callback(agent: RID, object_id: Int, method: String, userdata: Variant): Void;
    public function agent_set_map(agent: RID, map: RID): Void;
    public function agent_set_max_neighbors(agent: RID, count: Int): Void;
    public function agent_set_max_speed(agent: RID, max_speed: Float): Void;
    public function agent_set_neighbor_dist(agent: RID, dist: Float): Void;
    public function agent_set_position(agent: RID, position: GdVector3): Void;
    public function agent_set_radius(agent: RID, radius: Float): Void;
    public function agent_set_target_velocity(agent: RID, target_velocity: GdVector3): Void;
    public function agent_set_time_horizon(agent: RID, time: Float): Void;
    public function agent_set_velocity(agent: RID, velocity: GdVector3): Void;
    public function free_rid(rid: RID): Void;
    public function get_maps(): Array<Dynamic>;
    public function map_create(): RID;
    public function map_force_update(map: RID): Void;
    public function map_get_agents(map: RID): Array<Dynamic>;
    public function map_get_cell_height(map: RID): Float;
    public function map_get_cell_size(map: RID): Float;
    public function map_get_closest_point(map: RID, to_point: GdVector3): Vector3;
    public function map_get_closest_point_normal(map: RID, to_point: GdVector3): Vector3;
    public function map_get_closest_point_owner(map: RID, to_point: GdVector3): RID;
    public function map_get_closest_point_to_segment(map: RID, start: GdVector3, end: GdVector3, use_collision: Bool): Vector3;
    public function map_get_edge_connection_margin(map: RID): Float;
    public function map_get_path(map: RID, origin: GdVector3, destination: GdVector3, optimize: Bool, navigation_layers: Int): PoolVector3Array;
    public function map_get_regions(map: RID): Array<Dynamic>;
    public function map_get_up(map: RID): Vector3;
    public function map_is_active(map: RID): Bool;
    public function map_set_active(map: RID, active: Bool): Void;
    public function map_set_cell_height(map: RID, cell_height: Float): Void;
    public function map_set_cell_size(map: RID, cell_size: Float): Void;
    public function map_set_edge_connection_margin(map: RID, margin: Float): Void;
    public function map_set_up(map: RID, up: GdVector3): Void;
    public function process(delta_time: Float): Void;
    public function region_bake_navmesh(mesh: NavigationMesh, node: Node): Void;
    public function region_create(): RID;
    public function region_get_connection_pathway_end(region: RID, connection: Int): Vector3;
    public function region_get_connection_pathway_start(region: RID, connection: Int): Vector3;
    public function region_get_connections_count(region: RID): Int;
    public function region_get_enter_cost(region: RID): Float;
    public function region_get_map(region: RID): RID;
    public function region_get_navigation_layers(region: RID): Int;
    public function region_get_travel_cost(region: RID): Float;
    public function region_owns_point(region: RID, point: GdVector3): Bool;
    public function region_set_enter_cost(region: RID, enter_cost: Float): Void;
    public function region_set_map(region: RID, map: RID): Void;
    public function region_set_navigation_layers(region: RID, navigation_layers: Int): Void;
    public function region_set_navmesh(region: RID, nav_mesh: NavigationMesh): Void;
    public function region_set_transform(region: RID, transform: Transform): Void;
    public function region_set_travel_cost(region: RID, travel_cost: Float): Void;
    public function set_active(active: Bool): Void;
    @:native("__new")
    public function new();
}
