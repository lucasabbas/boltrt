package bolt.godot;

class ProximityGroupDispatchMode {
    public static var Proxy: Int = 0;
    public static var Signal: Int = 1;
}
class ProximityGroupMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ProximityGroupPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ProximityGroupPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ProximityGroupSignalNames {
    public static var broadcast: String = "broadcast";
}
@:native("godot.ProximityGroup")
extern class ProximityGroup extends Spatial {
    public var dispatchMode: Int;
    public var gridRadius: Vector3;
    public var groupName: String;
    public function broadcast(method: String, parameters: Dynamic): Void;
    @:native("__new")
    public function new();
}
