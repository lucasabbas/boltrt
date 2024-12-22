package lucidkit.godot;

@:native("godot.PhysicalBone")
extern class PhysicalBone extends PhysicsBody {
    public var body_offset: Transform;
    public var bounce: Float;
    public var friction: Float;
    public var gravity_scale: Float;
    public var joint_offset: Transform;
    public var joint_type: Int;
    public var mass: Float;
    public var weight: Float;
    public function apply_central_impulse(impulse: GdVector3): Void;
    public function apply_impulse(position: GdVector3, impulse: GdVector3): Void;
    public function get_bone_id(): Int;
    public function get_simulate_physics(): Bool;
    public function is_simulating_physics(): Bool;
    public function is_static_body(): Bool;
}
