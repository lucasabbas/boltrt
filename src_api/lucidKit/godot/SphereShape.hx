package lucidKit.godot;

@:native("godot.SphereShape")
extern class SphereShape extends Shape {
    public var radius: Float;
    @:native("__new")
    public function new();
}
