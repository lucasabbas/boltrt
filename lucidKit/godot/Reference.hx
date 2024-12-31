package lucidKit.godot;

class ReferenceSignalNames {
}
@:native("godot.Reference")
extern class Reference extends Object {
    public function initRef(): Bool;
    public function reference(): Bool;
    public function unreference(): Bool;
    @:native("__new")
    public function new();
}
