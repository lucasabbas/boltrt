package lucidKit.godot;

@:native("godot.Physics2DDirectBodyState")
extern class Physics2DDirectBodyState extends Object {
    public var angular_velocity: Float;
    public var inverse_inertia: Float;
    public var inverse_mass: Float;
    public var linear_velocity: Vector2;
    public var sleeping: Bool;
    public var step: Float;
    public var total_angular_damp: Float;
    public var total_gravity: Vector2;
    public var total_linear_damp: Float;
    public var transform: Transform2D;
    public function add_central_force(force: GdVector2): Void;
    public function add_force(offset: GdVector2, force: GdVector2): Void;
    public function add_torque(torque: Float): Void;
    public function apply_central_impulse(impulse: GdVector2): Void;
    public function apply_impulse(offset: GdVector2, impulse: GdVector2): Void;
    public function apply_torque_impulse(impulse: Float): Void;
    public function get_contact_collider(contact_idx: Int): RID;
    public function get_contact_collider_id(contact_idx: Int): Int;
    public function get_contact_collider_object(contact_idx: Int): Object;
    public function get_contact_collider_position(contact_idx: Int): Vector2;
    public function get_contact_collider_shape(contact_idx: Int): Int;
    public function get_contact_collider_shape_metadata(contact_idx: Int): Variant;
    public function get_contact_collider_velocity_at_position(contact_idx: Int): Vector2;
    public function get_contact_count(): Int;
    public function get_contact_local_normal(contact_idx: Int): Vector2;
    public function get_contact_local_position(contact_idx: Int): Vector2;
    public function get_contact_local_shape(contact_idx: Int): Int;
    public function get_space_state(): Physics2DDirectSpaceState;
    public function get_velocity_at_local_position(local_position: GdVector2): Vector2;
    public function integrate_forces(): Void;
    @:native("__new")
    public function new();
}
