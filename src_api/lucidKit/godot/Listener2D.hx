package lucidkit.godot;

@:native("godot.Listener2D")
extern class Listener2D extends Node2D {
    public function clear_current(): Void;
    public function is_current(): Bool;
    public function make_current(): Void;
}
