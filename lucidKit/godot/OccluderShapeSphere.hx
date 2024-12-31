package lucidKit.godot;

class OccluderShapeSphereSignalNames {
}
@:native("godot.OccluderShapeSphere")
extern class OccluderShapeSphere extends OccluderShape {
    public var spheres: Array<Dynamic>;
    public function setSpherePosition(index: Int, position: GdVector3): Void;
    public function setSphereRadius(index: Int, radius: Float): Void;
    @:native("__new")
    public function new();
}
