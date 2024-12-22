package lucidKit.godot;

@:native("godot.VehicleWheel")
extern class VehicleWheel extends Spatial {
    public var brake: Float;
    public var damping_compression: Float;
    public var damping_relaxation: Float;
    public var engine_force: Float;
    public var steering: Float;
    public var suspension_max_force: Float;
    public var suspension_stiffness: Float;
    public var suspension_travel: Float;
    public var use_as_steering: Bool;
    public var use_as_traction: Bool;
    public var wheel_friction_slip: Float;
    public var wheel_radius: Float;
    public var wheel_rest_length: Float;
    public var wheel_roll_influence: Float;
    public function get_contact_body(): Spatial;
    public function get_rpm(): Float;
    public function get_skidinfo(): Float;
    public function is_in_contact(): Bool;
    @:native("__new")
    public function new();
}
