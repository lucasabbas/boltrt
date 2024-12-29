package lucidKit.godot;

@:native("godot.Listener")
extern class Listener extends Spatial {
    public function clearCurrent(): Void;
    public function getListenerTransform(): Transform;
    public function isCurrent(): Bool;
    public function makeCurrent(): Void;
    @:native("__new")
    public function new();
}
