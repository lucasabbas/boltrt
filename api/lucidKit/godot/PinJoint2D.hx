package lucidKit.godot;

@:native("godot.PinJoint2D")
extern class PinJoint2D extends Joint2D {
    public var softness: Float;
    @:native("__new")
    public function new();
}
