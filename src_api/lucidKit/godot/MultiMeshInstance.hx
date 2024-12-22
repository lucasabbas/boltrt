package lucidKit.godot;

@:native("godot.MultiMeshInstance")
extern class MultiMeshInstance extends GeometryInstance {
    public var multimesh: MultiMesh;
    @:native("__new")
    public function new();
}
