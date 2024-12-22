package lucidKit.godot;

@:native("godot.QuadMesh")
extern class QuadMesh extends PrimitiveMesh {
    public var centerOffset: Vector3;
    public var size: Vector2;
    @:native("__new")
    public function new();
}
