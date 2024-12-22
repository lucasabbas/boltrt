package lucidKit.godot;

@:native("godot.NavigationObstacle")
extern class NavigationObstacle extends Node {
    public var estimateRadius: Bool;
    public var radius: Float;
    public function getNavigation(): Node;
    public function getRid(): RID;
    public function setNavigation(navigation: Node): Void;
    @:native("__new")
    public function new();
}
