package bolt.godot;

class CubeMeshSignalNames {
}
@:native("godot.CubeMesh")
extern class CubeMesh extends PrimitiveMesh {
    public var size: Vector3;
    public var subdivideDepth: Int;
    public var subdivideHeight: Int;
    public var subdivideWidth: Int;
    @:native("__new")
    public function new();
}
