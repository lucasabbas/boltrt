package lucidKit.godot;

@:native("godot.PrismMesh")
extern class PrismMesh extends PrimitiveMesh {
    public var leftToRight: Float;
    public var size: Vector3;
    public var subdivideDepth: Int;
    public var subdivideHeight: Int;
    public var subdivideWidth: Int;
    @:native("__new")
    public function new();
}
