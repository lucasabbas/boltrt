package lucidKit.godot;

class OccluderShapePolygonSignalNames {
}
@:native("godot.OccluderShapePolygon")
extern class OccluderShapePolygon extends OccluderShape {
    public var holePoints: PoolVector2Array;
    public var polygonPoints: PoolVector2Array;
    public var twoWay: Bool;
    public function setHolePoint(index: Int, position: GdVector2): Void;
    public function setPolygonPoint(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
