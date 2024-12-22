package lucidkit.godot;

@:native("godot.RigidBody2D")
extern class RigidBody2D extends PhysicsBody2D {
    public var angular_damp: Float;
    public var angular_velocity: Float;
    public var applied_force: Vector2;
    public var applied_torque: Float;
    public var bounce: Float;
    public var can_sleep: Bool;
    public var contact_monitor: Bool;
    public var contacts_reported: Int;
    public var continuous_cd: Int;
    public var custom_integrator: Bool;
    public var friction: Float;
    public var gravity_scale: Float;
    public var inertia: Float;
    public var linear_damp: Float;
    public var linear_velocity: Vector2;
    public var mass: Float;
    public var mode: Int;
    public var physics_material_override: PhysicsMaterial;
    public var sleeping: Bool;
    public var weight: Float;
    public function _integrate_forces(state: Physics2DDirectBodyState): Void;
    public function add_central_force(force: GdVector2): Void;
    public function add_force(offset: GdVector2, force: GdVector2): Void;
    public function add_torque(torque: Float): Void;
    public function apply_central_impulse(impulse: GdVector2): Void;
    public function apply_impulse(offset: GdVector2, impulse: GdVector2): Void;
    public function apply_torque_impulse(torque: Float): Void;
    public function get_colliding_bodies(): Array<Dynamic>;
    public function set_axis_velocity(axis_velocity: GdVector2): Void;
    public function test_motion(motion: GdVector2, infinite_inertia: Bool, margin: Float, result: Physics2DTestMotionResult): Bool;
}
