package magicrt.godot;

class MutexSignalNames {
}
@:native("godot.Mutex")
extern class Mutex extends Reference {
    public function lock(): Void;
    public function tryLock(): Int;
    public function unlock(): Void;
    @:native("__new")
    public function new();
}
