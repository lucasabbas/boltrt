package lucidKit.godot;

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
