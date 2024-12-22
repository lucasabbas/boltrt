package lucidKit.godot;

@:native("godot.CapsuleMesh")
extern class CapsuleMesh extends PrimitiveMesh {
    public var midHeight: Float;
    public var radialSegments: Int;
    public var radius: Float;
    public var rings: Int;
    @:native("__new")
    public function new();
}
