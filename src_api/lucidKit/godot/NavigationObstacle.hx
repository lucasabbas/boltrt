package lucidkit.godot;

@:native("godot.NavigationObstacle")
extern class NavigationObstacle extends Node {
    public var estimate_radius: Bool;
    public var radius: Float;
    public function get_navigation(): Node;
    public function get_rid(): RID;
    public function set_navigation(navigation: Node): Void;
}
