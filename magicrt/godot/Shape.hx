package magicrt.godot;

class ShapeSignalNames {
}
@:native("godot.Shape")
extern class Shape extends Resource {
    public var margin: Float;
    public function getDebugMesh(): ArrayMesh;
    @:native("__new")
    public function new();
}
