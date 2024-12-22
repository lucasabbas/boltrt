package lucidkit.godot;

@:native("godot.Room")
extern class Room extends Spatial {
    public var points: PoolVector3Array;
    public var room_simplify: Float;
    public var use_default_simplify: Bool;
    public function set_point(index: Int, position: GdVector3): Void;
}
