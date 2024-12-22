package lucidkit.godot;

@:native("godot.ConeTwistJoint")
extern class ConeTwistJoint extends Joint {
    public var bias: Float;
    public var relaxation: Float;
    public var softness: Float;
    public var swing_span: Float;
    public var twist_span: Float;
    public function get_param(param: Int): Float;
    public function set_param(param: Int, value: Float): Void;
}
