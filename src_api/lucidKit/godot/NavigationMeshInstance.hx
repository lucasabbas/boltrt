package lucidKit.godot;

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
