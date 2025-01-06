package magicrt.godot;

class PlaneMeshSignalNames {
}
@:native("godot.PlaneMesh")
extern class PlaneMesh extends PrimitiveMesh {
    public var centerOffset: Vector3;
    public var size: Vector2;
    public var subdivideDepth: Int;
    public var subdivideWidth: Int;
    @:native("__new")
    public function new();
}
