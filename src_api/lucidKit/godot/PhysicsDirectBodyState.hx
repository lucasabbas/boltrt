package lucidkit.godot;

@:native("godot.PhysicsDirectBodyState")
extern class PhysicsDirectBodyState extends Object {
    public var angular_velocity: Vector3;
    public var center_of_mass: Vector3;
    public var inverse_inertia: Vector3;
    public var inverse_mass: Float;
    public var linear_velocity: Vector3;
    public var principal_inertia_axes: Basis;
    public var sleeping: Bool;
    public var step: Float;
    public var total_angular_damp: Float;
    public var total_gravity: Vector3;
    public var total_linear_damp: Float;
    public var transform: Transform;
    public function add_central_force(force: GdVector3): Void;
    public function add_force(force: GdVector3, position: GdVector3): Void;
    public function add_torque(torque: GdVector3): Void;
    public function apply_central_impulse(j: GdVector3): Void;
    public function apply_impulse(position: GdVector3, j: GdVector3): Void;
    public function apply_torque_impulse(j: GdVector3): Void;
    public function get_contact_collider(contact_idx: Int): RID;
    public function get_contact_collider_id(contact_idx: Int): Int;
    public function get_contact_collider_object(contact_idx: Int): Object;
    public function get_contact_collider_position(contact_idx: Int): Vector3;
    public function get_contact_collider_shape(contact_idx: Int): Int;
    public function get_contact_collider_velocity_at_position(contact_idx: Int): Vector3;
    public function get_contact_count(): Int;
    public function get_contact_impulse(contact_idx: Int): Float;
    public function get_contact_local_normal(contact_idx: Int): Vector3;
    public function get_contact_local_position(contact_idx: Int): Vector3;
    public function get_contact_local_shape(contact_idx: Int): Int;
    public function get_space_state(): PhysicsDirectSpaceState;
    public function get_velocity_at_local_position(local_position: GdVector3): Vector3;
    public function integrate_forces(): Void;
}
