package lucidKit.godot;

@:native("godot.OccluderShapePolygon")
extern class OccluderShapePolygon extends OccluderShape {
    public var hole_points: PoolVector2Array;
    public var polygon_points: PoolVector2Array;
    public var two_way: Bool;
    public function set_hole_point(index: Int, position: GdVector2): Void;
    public function set_polygon_point(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
