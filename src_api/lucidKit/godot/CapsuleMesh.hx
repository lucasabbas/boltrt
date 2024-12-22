package lucidKit.godot;

@:native("godot.CapsuleMesh")
extern class CapsuleMesh extends PrimitiveMesh {
    public var mid_height: Float;
    public var radial_segments: Int;
    public var radius: Float;
    public var rings: Int;
    @:native("__new")
    public function new();
}
