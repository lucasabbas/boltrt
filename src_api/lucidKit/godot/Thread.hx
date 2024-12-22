package lucidKit.godot;

@:native("godot.Thread")
extern class Thread extends Reference {
    public function get_id(): String;
    public function is_active(): Bool;
    public function is_alive(): Bool;
    public function start(instance: Object, method: String, userdata: Variant, priority: Int): Int;
    public function wait_to_finish(): Variant;
    @:native("__new")
    public function new();
}
