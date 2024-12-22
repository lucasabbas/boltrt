package lucidKit.godot;

@:native("godot.Listener")
extern class Listener extends Spatial {
    public function clear_current(): Void;
    public function get_listener_transform(): Transform;
    public function is_current(): Bool;
    public function make_current(): Void;
    @:native("__new")
    public function new();
}
