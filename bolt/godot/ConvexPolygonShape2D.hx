package bolt.godot;

class ConvexPolygonShape2DSignalNames {
}
@:native("godot.ConvexPolygonShape2D")
extern class ConvexPolygonShape2D extends Shape2D {
    public var points: PoolVector2Array;
    public function setPointCloud(pointCloud: PoolVector2Array): Void;
    @:native("__new")
    public function new();
}
