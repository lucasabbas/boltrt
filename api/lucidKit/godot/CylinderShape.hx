package lucidKit.godot;

@:native("godot.CylinderShape")
extern class CylinderShape extends Shape {
    public var height: Float;
    public var radius: Float;
    @:native("__new")
    public function new();
}
