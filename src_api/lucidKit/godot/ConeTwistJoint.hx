package lucidKit.godot;

@:native("godot.ConeTwistJoint")
extern class ConeTwistJoint extends Joint {
    public var bias: Float;
    public var relaxation: Float;
    public var softness: Float;
    public var swingSpan: Float;
    public var twistSpan: Float;
    public function getParam(param: Int): Float;
    public function setParam(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
