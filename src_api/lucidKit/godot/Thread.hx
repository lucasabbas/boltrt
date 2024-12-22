package lucidKit.godot;

@:native("godot.Thread")
extern class Thread extends Reference {
    public function getId(): String;
    public function isActive(): Bool;
    public function isAlive(): Bool;
    public function start(instance: Object, method: String, userdata: Variant, priority: Int = 1): Int;
    public function waitToFinish(): Variant;
    @:native("__new")
    public function new();
}
