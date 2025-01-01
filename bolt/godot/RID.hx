package bolt.godot;

class RIDSignalNames {
}
@:native("godot.RID")
extern class RID extends bolt.core.MonoObject {
    @:native("__new")
    public function new(from: Object);
    public function getId(): Int;
}
