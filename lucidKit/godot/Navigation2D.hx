package lucidKit.godot;

class Navigation2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Navigation2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Navigation2DSignalNames {
}
@:native("godot.Navigation2D")
extern class Navigation2D extends Node2D {
    public var cellSize: Float;
    public var edgeConnectionMargin: Float;
    public var navigationLayers: Int;
    public function getClosestPoint(toPoint: GdVector2): Vector2;
    public function getClosestPointOwner(toPoint: GdVector2): RID;
    public function getRid(): RID;
    public function getSimplePath(start: GdVector2, end: GdVector2, optimize: Bool = true): PoolVector2Array;
    @:native("__new")
    public function new();
}
