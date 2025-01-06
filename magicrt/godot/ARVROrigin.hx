package magicrt.godot;

class ARVROriginMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVROriginPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ARVROriginPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ARVROriginSignalNames {
}
@:native("godot.ARVROrigin")
extern class ARVROrigin extends Spatial {
    public var worldScale: Float;
    @:native("__new")
    public function new();
}
