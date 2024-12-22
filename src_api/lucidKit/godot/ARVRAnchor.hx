package lucidKit.godot;

@:native("godot.ARVRAnchor")
extern class ARVRAnchor extends Spatial {
    public var anchorId: Int;
    public function getAnchorName(): String;
    public function getIsActive(): Bool;
    public function getMesh(): Mesh;
    public function getPlane(): Plane;
    public function getSize(): Vector3;
    @:native("__new")
    public function new();
}
