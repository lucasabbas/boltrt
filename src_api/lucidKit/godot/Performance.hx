package lucidKit.godot;

@:native("godot.Performance")
extern class Performance extends Object {
    public function getMonitor(monitor: Int): Float;
    @:native("__new")
    public function new();
}