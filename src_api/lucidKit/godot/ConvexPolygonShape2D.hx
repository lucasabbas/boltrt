package lucidKit.godot;

@:native("godot.ConvexPolygonShape2D")
extern class ConvexPolygonShape2D extends Shape2D {
    public var points: PoolVector2Array;
    public function set_point_cloud(point_cloud: PoolVector2Array): Void;
    @:native("__new")
    public function new();
}
