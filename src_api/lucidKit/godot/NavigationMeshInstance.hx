package lucidkit.godot;

@:native("godot.NavigationMeshInstance")
extern class NavigationMeshInstance extends Spatial {
    public var enabled: Bool;
    public var enter_cost: Float;
    public var navigation_layers: Int;
    public var navmesh: NavigationMesh;
    public var travel_cost: Float;
    public function bake_navigation_mesh(on_thread: Bool): Void;
    public function get_region_rid(): RID;
}
