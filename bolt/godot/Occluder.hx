package bolt.godot;

class OccluderMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class OccluderPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class OccluderPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class OccluderSignalNames {
}
@:native("godot.Occluder")
extern class Occluder extends Spatial {
    public var shape: OccluderShape;
    public function resourceChanged(resource: Resource): Void;
    @:native("__new")
    public function new();
}
