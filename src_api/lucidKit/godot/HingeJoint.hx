package lucidKit.godot;

@:native("godot.HingeJoint")
extern class HingeJoint extends Joint {
    public var angular_limit__bias: Float;
    public var angular_limit__enable: Bool;
    public var angular_limit__lower: Float;
    public var angular_limit__relaxation: Float;
    public var angular_limit__softness: Float;
    public var angular_limit__upper: Float;
    public var motor__enable: Bool;
    public var motor__max_impulse: Float;
    public var motor__target_velocity: Float;
    public var params__bias: Float;
    public function get_flag(flag: Int): Bool;
    public function get_param(param: Int): Float;
    public function set_flag(flag: Int, enabled: Bool): Void;
    public function set_param(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
