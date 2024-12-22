package lucidkit.godot;

@:native("godot.PinJoint")
extern class PinJoint extends Joint {
    public var params/bias: Float;
    public var params/damping: Float;
    public var params/impulse_clamp: Float;
    public function get_param(param: Int): Float;
    public function set_param(param: Int, value: Float): Void;
}
