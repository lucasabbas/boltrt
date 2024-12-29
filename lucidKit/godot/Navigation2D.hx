package lucidKit.godot;

@:native("godot.Navigation2D")
extern class Navigation2D extends Node2D {
    public var cellSize: Float;
    public var edgeConnectionMargin: Float;
    public var navigationLayers: Int;
    public function getClosestPoint(toPoint: GdVector2): Vector2;
    public function getClosestPointOwner(toPoint: GdVector2): RID;
    public function getRid(): RID;
    public function getSimplePath(start: GdVector2, end: GdVector2, optimize: Bool = true): PoolVector2Array;
    @:native("__new")
    public function new();
}
