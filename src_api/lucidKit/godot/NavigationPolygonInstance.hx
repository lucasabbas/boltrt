package lucidkit.godot;

@:native("godot.NavigationPolygonInstance")
extern class NavigationPolygonInstance extends Node2D {
    public var enabled: Bool;
    public var enter_cost: Float;
    public var navigation_layers: Int;
    public var navpoly: NavigationPolygon;
    public var travel_cost: Float;
    public function get_region_rid(): RID;
}
