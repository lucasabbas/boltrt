package lucidkit.godot;

@:native("godot.Performance")
extern class Performance extends Object {
    public function get_monitor(monitor: Int): Float;
}
