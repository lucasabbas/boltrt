package lucidKit.godot;

@:native("godot.SliderJoint")
extern class SliderJoint extends Joint {
    public var angular_limit/damping: Float;
    public var angular_limit/lower_angle: Float;
    public var angular_limit/restitution: Float;
    public var angular_limit/softness: Float;
    public var angular_limit/upper_angle: Float;
    public var angular_motion/damping: Float;
    public var angular_motion/restitution: Float;
    public var angular_motion/softness: Float;
    public var angular_ortho/damping: Float;
    public var angular_ortho/restitution: Float;
    public var angular_ortho/softness: Float;
    public var linear_limit/damping: Float;
    public var linear_limit/lower_distance: Float;
    public var linear_limit/restitution: Float;
    public var linear_limit/softness: Float;
    public var linear_limit/upper_distance: Float;
    public var linear_motion/damping: Float;
    public var linear_motion/restitution: Float;
    public var linear_motion/softness: Float;
    public var linear_ortho/damping: Float;
    public var linear_ortho/restitution: Float;
    public var linear_ortho/softness: Float;
    public function get_param(param: Int): Float;
    public function set_param(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
