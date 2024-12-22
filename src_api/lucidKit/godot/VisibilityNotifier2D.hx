package lucidKit.godot;

@:native("godot.VisibilityNotifier2D")
extern class VisibilityNotifier2D extends Node2D {
    public var rect: Rect2;
    public function isOnScreen(): Bool;
    @:native("__new")
    public function new();
}
