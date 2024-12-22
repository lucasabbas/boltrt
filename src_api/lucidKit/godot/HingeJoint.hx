package lucidkit.godot;

@:native("godot.HingeJoint")
extern class HingeJoint extends Joint {
    public var angular_limit/bias: Float;
    public var angular_limit/enable: Bool;
    public var angular_limit/lower: Float;
    public var angular_limit/relaxation: Float;
    public var angular_limit/softness: Float;
    public var angular_limit/upper: Float;
    public var motor/enable: Bool;
    public var motor/max_impulse: Float;
    public var motor/target_velocity: Float;
    public var params/bias: Float;
    public function get_flag(flag: Int): Bool;
    public function get_param(param: Int): Float;
    public function set_flag(flag: Int, enabled: Bool): Void;
    public function set_param(param: Int, value: Float): Void;
}
