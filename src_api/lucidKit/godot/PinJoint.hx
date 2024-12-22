package lucidKit.godot;

@:native("godot.PinJoint")
extern class PinJoint extends Joint {
    public var paramsBias: Float;
    public var paramsDamping: Float;
    public var paramsImpulseClamp: Float;
    public function getParam(param: Int): Float;
    public function setParam(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
