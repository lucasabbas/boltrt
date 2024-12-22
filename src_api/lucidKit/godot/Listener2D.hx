package lucidKit.godot;

@:native("godot.Listener2D")
extern class Listener2D extends Node2D {
    public function clearCurrent(): Void;
    public function isCurrent(): Bool;
    public function makeCurrent(): Void;
    @:native("__new")
    public function new();
}
