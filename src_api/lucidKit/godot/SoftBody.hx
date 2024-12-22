package lucidkit.godot;

@:native("godot.SoftBody")
extern class SoftBody extends MeshInstance {
    public var areaAngular_stiffness: Float;
    public var collision_layer: Int;
    public var collision_mask: Int;
    public var damping_coefficient: Float;
    public var drag_coefficient: Float;
    public var linear_stiffness: Float;
    public var parent_collision_ignore: NodePath;
    public var physics_enabled: Bool;
    public var pose_matching_coefficient: Float;
    public var pressure_coefficient: Float;
    public var ray_pickable: Bool;
    public var simulation_precision: Int;
    public var total_mass: Float;
    public var volume_stiffness: Float;
    public function add_collision_exception_with(body: Node): Void;
    public function get_collision_exceptions(): Array<Dynamic>;
    public function get_collision_layer_bit(bit: Int): Bool;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function get_point_transform(point_index: Int): Vector3;
    public function is_point_pinned(point_index: Int): Bool;
    public function remove_collision_exception_with(body: Node): Void;
    public function set_collision_layer_bit(bit: Int, value: Bool): Void;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    public function set_point_pinned(point_index: Int, pinned: Bool, attachment_path: NodePath): Void;
}
