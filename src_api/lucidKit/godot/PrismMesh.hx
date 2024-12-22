package lucidKit.godot;

@:native("godot.PrismMesh")
extern class PrismMesh extends PrimitiveMesh {
    public var left_to_right: Float;
    public var size: Vector3;
    public var subdivide_depth: Int;
    public var subdivide_height: Int;
    public var subdivide_width: Int;
    @:native("__new")
    public function new();
}
