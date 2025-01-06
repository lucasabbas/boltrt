package magicrt.godot;

class CylinderMeshSignalNames {
}
@:native("godot.CylinderMesh")
extern class CylinderMesh extends PrimitiveMesh {
    public var bottomRadius: Float;
    public var height: Float;
    public var radialSegments: Int;
    public var rings: Int;
    public var topRadius: Float;
    @:native("__new")
    public function new();
}
