package bolt.godot;

class RoomGroupMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RoomGroupPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RoomGroupPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RoomGroupSignalNames {
}
@:native("godot.RoomGroup")
extern class RoomGroup extends Spatial {
    public var roomgroupPriority: Int;
    @:native("__new")
    public function new();
}
