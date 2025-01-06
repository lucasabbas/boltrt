package magicrt.godot;

class ThreadSignalNames {
}
@:native("godot.Thread")
extern class Thread extends Reference {
    public function getId(): String;
    public function isActive(): Bool;
    public function isAlive(): Bool;
    public function start(instance: Object, method: String, userdata: Dynamic, priority: Int = 1): Int;
    public function waitToFinish(): Dynamic;
    @:native("__new")
    public function new();
}
