package lucidKit.godot;

@:native("godot.DampedSpringJoint2D")
extern class DampedSpringJoint2D extends Joint2D {
    public var damping: Float;
    public var length: Float;
    public var restLength: Float;
    public var stiffness: Float;
    @:native("__new")
    public function new();
}
