package bolt.godot;

class ARVRAnchorMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVRAnchorPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ARVRAnchorPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVRAnchorSignalNames {
    public static var meshUpdated: String = "mesh_updated";
}
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
