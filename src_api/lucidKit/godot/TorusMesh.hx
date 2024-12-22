package lucidKit.godot;

@:native("godot.TorusMesh")
extern class TorusMesh extends PrimitiveMesh {
    public var inner_radius: Float;
    public var outer_radius: Float;
    public var ring_segments: Int;
    public var rings: Int;
    @:native("__new")
    public function new();
}
