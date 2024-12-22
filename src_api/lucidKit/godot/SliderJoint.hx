package lucidKit.godot;

@:native("godot.SliderJoint")
extern class SliderJoint extends Joint {
    public var angular_limit__damping: Float;
    public var angular_limit__lower_angle: Float;
    public var angular_limit__restitution: Float;
    public var angular_limit__softness: Float;
    public var angular_limit__upper_angle: Float;
    public var angular_motion__damping: Float;
    public var angular_motion__restitution: Float;
    public var angular_motion__softness: Float;
    public var angular_ortho__damping: Float;
    public var angular_ortho__restitution: Float;
    public var angular_ortho__softness: Float;
    public var linear_limit__damping: Float;
    public var linear_limit__lower_distance: Float;
    public var linear_limit__restitution: Float;
    public var linear_limit__softness: Float;
    public var linear_limit__upper_distance: Float;
    public var linear_motion__damping: Float;
    public var linear_motion__restitution: Float;
    public var linear_motion__softness: Float;
    public var linear_ortho__damping: Float;
    public var linear_ortho__restitution: Float;
    public var linear_ortho__softness: Float;
    public function get_param(param: Int): Float;
    public function set_param(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
