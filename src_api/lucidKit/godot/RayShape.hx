package lucidKit.godot;

@:native("godot.RayShape")
extern class RayShape extends Shape {
    public var length: Float;
    public var slips_on_slope: Bool;
    @:native("__new")
    public function new();
}
