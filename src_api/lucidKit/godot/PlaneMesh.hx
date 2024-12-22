package lucidKit.godot;

@:native("godot.PlaneMesh")
extern class PlaneMesh extends PrimitiveMesh {
    public var center_offset: Vector3;
    public var size: Vector2;
    public var subdivide_depth: Int;
    public var subdivide_width: Int;
    @:native("__new")
    public function new();
}
