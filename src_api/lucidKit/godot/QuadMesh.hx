package lucidKit.godot;

@:native("godot.QuadMesh")
extern class QuadMesh extends PrimitiveMesh {
    public var center_offset: Vector3;
    public var size: Vector2;
    @:native("__new")
    public function new();
}
