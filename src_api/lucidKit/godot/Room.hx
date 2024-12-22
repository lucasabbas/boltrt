package lucidKit.godot;

@:native("godot.Room")
extern class Room extends Spatial {
    public var points: PoolVector3Array;
    public var roomSimplify: Float;
    public var useDefaultSimplify: Bool;
    public function setPoint(index: Int, position: GdVector3): Void;
    @:native("__new")
    public function new();
}
