package lucidkit.godot;

@:native("godot.DampedSpringJoint2D")
extern class DampedSpringJoint2D extends Joint2D {
    public var damping: Float;
    public var length: Float;
    public var rest_length: Float;
    public var stiffness: Float;
}
