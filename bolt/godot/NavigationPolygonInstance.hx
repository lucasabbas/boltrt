package bolt.godot;

class NavigationPolygonInstancePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NavigationPolygonInstancePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationPolygonInstanceSignalNames {
}
@:native("godot.NavigationPolygonInstance")
extern class NavigationPolygonInstance extends Node2D {
    public var enabled: Bool;
    public var enterCost: Float;
    public var navigationLayers: Int;
    public var navpoly: NavigationPolygon;
    public var travelCost: Float;
    public function getRegionRid(): RID;
    @:native("__new")
    public function new();
}
