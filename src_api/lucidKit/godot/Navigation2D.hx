package lucidKit.godot;

@:native("godot.Navigation2D")
extern class Navigation2D extends Node2D {
    public var cell_size: Float;
    public var edge_connection_margin: Float;
    public var navigation_layers: Int;
    public function get_closest_point(to_point: GdVector2): Vector2;
    public function get_closest_point_owner(to_point: GdVector2): RID;
    public function get_rid(): RID;
    public function get_simple_path(start: GdVector2, end: GdVector2, optimize: Bool): PoolVector2Array;
    @:native("__new")
    public function new();
}
