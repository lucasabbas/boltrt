package lucidkit.godot;

@:native("godot.RayShape2D")
extern class RayShape2D extends Shape2D {
    public var length: Float;
    public var slips_on_slope: Bool;
}
