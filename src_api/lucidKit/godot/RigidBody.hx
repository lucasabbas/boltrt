package lucidkit.godot;

@:native("godot.RigidBody")
extern class RigidBody extends PhysicsBody {
    public var angular_damp: Float;
    public var angular_velocity: Vector3;
    public var axis_lock_angular_x: Bool;
    public var axis_lock_angular_y: Bool;
    public var axis_lock_angular_z: Bool;
    public var axis_lock_linear_x: Bool;
    public var axis_lock_linear_y: Bool;
    public var axis_lock_linear_z: Bool;
    public var bounce: Float;
    public var can_sleep: Bool;
    public var contact_monitor: Bool;
    public var contacts_reported: Int;
    public var continuous_cd: Bool;
    public var custom_integrator: Bool;
    public var friction: Float;
    public var gravity_scale: Float;
    public var linear_damp: Float;
    public var linear_velocity: Vector3;
    public var mass: Float;
    public var mode: Int;
    public var physics_material_override: PhysicsMaterial;
    public var sleeping: Bool;
    public var weight: Float;
    public function _integrate_forces(state: PhysicsDirectBodyState): Void;
    public function add_central_force(force: GdVector3): Void;
    public function add_force(force: GdVector3, position: GdVector3): Void;
    public function add_torque(torque: GdVector3): Void;
    public function apply_central_impulse(impulse: GdVector3): Void;
    public function apply_impulse(position: GdVector3, impulse: GdVector3): Void;
    public function apply_torque_impulse(impulse: GdVector3): Void;
    public function get_axis_lock(axis: Int): Bool;
    public function get_colliding_bodies(): Array<Dynamic>;
    public function get_inverse_inertia_tensor(): Basis;
    public function set_axis_lock(axis: Int, lock: Bool): Void;
    public function set_axis_velocity(axis_velocity: GdVector3): Void;
}
