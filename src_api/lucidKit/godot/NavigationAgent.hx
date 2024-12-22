package lucidKit.godot;

@:native("godot.NavigationAgent")
extern class NavigationAgent extends Node {
    public var agent_height_offset: Float;
    public var avoidance_enabled: Bool;
    public var ignore_y: Bool;
    public var max_neighbors: Int;
    public var max_speed: Float;
    public var navigation_layers: Int;
    public var neighbor_dist: Float;
    public var path_desired_distance: Float;
    public var path_max_distance: Float;
    public var radius: Float;
    public var target_desired_distance: Float;
    public var target_location: Vector3;
    public var time_horizon: Float;
    public function distance_to_target(): Float;
    public function get_final_location(): Vector3;
    public function get_nav_path(): PoolVector3Array;
    public function get_nav_path_index(): Int;
    public function get_navigation(): Node;
    public function get_navigation_map(): RID;
    public function get_next_location(): Vector3;
    public function get_rid(): RID;
    public function is_navigation_finished(): Bool;
    public function is_target_reachable(): Bool;
    public function is_target_reached(): Bool;
    public function set_navigation(navigation: Node): Void;
    public function set_navigation_map(navigation_map: RID): Void;
    public function set_velocity(velocity: GdVector3): Void;
    @:native("__new")
    public function new();
}
