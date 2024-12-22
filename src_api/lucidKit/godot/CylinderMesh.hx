package lucidKit.godot;

@:native("godot.CylinderMesh")
extern class CylinderMesh extends PrimitiveMesh {
    public var bottom_radius: Float;
    public var height: Float;
    public var radial_segments: Int;
    public var rings: Int;
    public var top_radius: Float;
    @:native("__new")
    public function new();
}
