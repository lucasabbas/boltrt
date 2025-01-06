package magicrt.godot;

class Position3DMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Position3DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Position3DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Position3DSignalNames {
}
@:native("godot.Position3D")
extern class Position3D extends Spatial {
    @:native("__new")
    public function new();
}
