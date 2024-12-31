package lucidKit.godot;

class SphereMeshSignalNames {
}
@:native("godot.SphereMesh")
extern class SphereMesh extends PrimitiveMesh {
    public var height: Float;
    public var isHemisphere: Bool;
    public var radialSegments: Int;
    public var radius: Float;
    public var rings: Int;
    @:native("__new")
    public function new();
}
