package lucidKit.godot;

@:native("godot.LineShape2D")
extern class LineShape2D extends Shape2D {
    public var d: Float;
    public var normal: Vector2;
    @:native("__new")
    public function new();
}
