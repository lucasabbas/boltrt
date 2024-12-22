package lucidKit.godot;

@:native("godot.ConvexPolygonShape")
extern class ConvexPolygonShape extends Shape {
    public var points: PoolVector3Array;
    @:native("__new")
    public function new();
}
