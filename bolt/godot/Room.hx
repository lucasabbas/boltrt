package bolt.godot;

class RoomMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RoomPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RoomPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RoomSignalNames {
}
@:native("godot.Room")
extern class Room extends Spatial {
    public var points: PoolVector3Array;
    public var roomSimplify: Float;
    public var useDefaultSimplify: Bool;
    public function setPoint(index: Int, position: GdVector3): Void;
    @:native("__new")
    public function new();
}
