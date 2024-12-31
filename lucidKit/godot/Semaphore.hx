package lucidKit.godot;

class SemaphoreSignalNames {
}
@:native("godot.Semaphore")
extern class Semaphore extends Reference {
    public function post(): Int;
    public function tryWait(): Int;
    public function wait(): Int;
    @:native("__new")
    public function new();
}
