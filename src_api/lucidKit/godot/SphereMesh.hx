package lucidkit.godot;

@:native("godot.SphereMesh")
extern class SphereMesh extends PrimitiveMesh {
    public var height: Float;
    public var is_hemisphere: Bool;
    public var radial_segments: Int;
    public var radius: Float;
    public var rings: Int;
}
