package lucidKit.godot;

@:native("godot.RectangleShape2D")
extern class RectangleShape2D extends Shape2D {
    public var extents: Vector2;
    @:native("__new")
    public function new();
}
