package lucidKit.godot;

@:native("godot.BoxShape")
extern class BoxShape extends Shape {
    public var extents: Vector3;
    @:native("__new")
    public function new();
}