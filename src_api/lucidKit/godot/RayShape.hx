package lucidkit.godot;

@:native("godot.RayShape")
extern class RayShape extends Shape {
    public var length: Float;
    public var slips_on_slope: Bool;
}
