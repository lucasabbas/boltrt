package bolt.godot;

class NavigationMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NavigationPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationSignalNames {
    public static var mapChanged: String = "map_changed";
}
@:native("godot.Navigation")
extern class Navigation extends Spatial {
    public var cellHeight: Float;
    public var cellSize: Float;
    public var edgeConnectionMargin: Float;
    public var navigationLayers: Int;
    public var upVector: Vector3;
    public function getClosestPoint(toPoint: GdVector3): Vector3;
    public function getClosestPointNormal(toPoint: GdVector3): Vector3;
    public function getClosestPointOwner(toPoint: GdVector3): RID;
    public function getClosestPointToSegment(start: GdVector3, end: GdVector3, useCollision: Bool = false): Vector3;
    public function getRid(): RID;
    public function getSimplePath(start: GdVector3, end: GdVector3, optimize: Bool = true): PoolVector3Array;
    @:native("__new")
    public function new();
}
