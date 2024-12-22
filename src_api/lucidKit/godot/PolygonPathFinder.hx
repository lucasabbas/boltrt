package lucidKit.godot;

@:native("godot.PolygonPathFinder")
extern class PolygonPathFinder extends Resource {
    public function find_path(from: GdVector2, to: GdVector2): PoolVector2Array;
    public function get_bounds(): Rect2;
    public function get_closest_point(point: GdVector2): Vector2;
    public function get_intersections(from: GdVector2, to: GdVector2): PoolVector2Array;
    public function get_point_penalty(idx: Int): Float;
    public function is_point_inside(point: GdVector2): Bool;
    public function set_point_penalty(idx: Int, penalty: Float): Void;
    public function setup(points: PoolVector2Array, connections: PoolIntArray): Void;
    @:native("__new")
    public function new();
}
