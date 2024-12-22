package lucidKit.godot;

@:native("godot.Semaphore")
extern class Semaphore extends Reference {
    public function post(): Int;
    public function try_wait(): Int;
    public function wait(): Int;
    @:native("__new")
    public function new();
}
