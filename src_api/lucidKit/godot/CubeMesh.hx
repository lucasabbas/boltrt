package lucidkit.godot;

@:native("godot.CubeMesh")
extern class CubeMesh extends PrimitiveMesh {
    public var size: Vector3;
    public var subdivide_depth: Int;
    public var subdivide_height: Int;
    public var subdivide_width: Int;
}
