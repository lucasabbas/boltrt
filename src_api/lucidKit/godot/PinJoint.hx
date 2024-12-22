package lucidKit.godot;

@:native("godot.PinJoint")
extern class PinJoint extends Joint {
    public var params__bias: Float;
    public var params__damping: Float;
    public var params__impulse_clamp: Float;
    public function get_param(param: Int): Float;
    public function set_param(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
