package lucidKit.godot;

class PrimitiveMeshSignalNames {
}
@:native("godot.PrimitiveMesh")
extern class PrimitiveMesh extends Mesh {
    public var customAabb: AABB;
    public var flipFaces: Bool;
    public var material: Material;
    public function getMeshArrays(): Array<Dynamic>;
    @:native("__new")
    public function new();
}
