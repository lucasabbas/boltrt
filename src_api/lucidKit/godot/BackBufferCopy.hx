package lucidKit.godot;

@:native("godot.BackBufferCopy")
extern class BackBufferCopy extends Node2D {
    public var copy_mode: Int;
    public var rect: Rect2;
    @:native("__new")
    public function new();
}
