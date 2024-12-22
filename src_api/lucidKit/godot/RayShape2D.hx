package lucidKit.godot;

@:native("godot.RayShape2D")
extern class RayShape2D extends Shape2D {
    public var length: Float;
    public var slips_on_slope: Bool;
    @:native("__new")
    public function new();
}
