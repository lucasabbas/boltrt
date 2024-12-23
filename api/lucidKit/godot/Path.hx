package lucidKit.godot;

@:native("godot.Path")
extern class Path extends Spatial {
    public var curve: Curve3D;
    @:native("__new")
    public function new();
}
