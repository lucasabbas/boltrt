package lucidkit.godot;

@:native("godot.VisibilityNotifier2D")
extern class VisibilityNotifier2D extends Node2D {
    public var rect: Rect2;
    public function is_on_screen(): Bool;
}
