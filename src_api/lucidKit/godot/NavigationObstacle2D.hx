package lucidKit.godot;

@:native("godot.NavigationObstacle2D")
extern class NavigationObstacle2D extends Node {
    public var estimate_radius: Bool;
    public var radius: Float;
    public function get_navigation(): Node;
    public function get_rid(): RID;
    public function set_navigation(navigation: Node): Void;
    @:native("__new")
    public function new();
}
