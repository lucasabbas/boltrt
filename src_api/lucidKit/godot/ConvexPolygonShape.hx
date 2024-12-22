package lucidkit.godot;

@:native("godot.ConvexPolygonShape")
extern class ConvexPolygonShape extends Shape {
    public var points: PoolVector3Array;
}
