package lucidKit.godot;

@:native("godot.NavigationObstacle2D")
extern class NavigationObstacle2D extends Node {
    public var estimateRadius: Bool;
    public var radius: Float;
    public function getNavigation(): Node;
    public function getRid(): RID;
    public function setNavigation(navigation: Node): Void;
    @:native("__new")
    public function new();
}
