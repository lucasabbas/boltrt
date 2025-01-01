package bolt.godot;

class PathMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PathPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PathPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PathSignalNames {
    public static var curveChanged: String = "curve_changed";
}
@:native("godot.Path")
extern class Path extends Spatial {
    public var curve: Curve3D;
    @:native("__new")
    public function new();
}
