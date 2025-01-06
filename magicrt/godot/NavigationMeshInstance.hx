package magicrt.godot;

class NavigationMeshInstanceMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationMeshInstancePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NavigationMeshInstancePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NavigationMeshInstanceSignalNames {
    public static var bakeFinished: String = "bake_finished";
    public static var navigationMeshChanged: String = "navigation_mesh_changed";
}
@:native("godot.NavigationMeshInstance")
extern class NavigationMeshInstance extends Spatial {
    public var enabled: Bool;
    public var enterCost: Float;
    public var navigationLayers: Int;
    public var navmesh: NavigationMesh;
    public var travelCost: Float;
    public function bakeNavigationMesh(onThread: Bool = true): Void;
    public function getRegionRid(): RID;
    @:native("__new")
    public function new();
}
