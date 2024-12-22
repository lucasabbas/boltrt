package lucidKit.godot;

@:native("godot.Reference")
extern class Reference extends Object {
    public function init_ref(): Bool;
    public function reference(): Bool;
    public function unreference(): Bool;
    @:native("__new")
    public function new();
}
