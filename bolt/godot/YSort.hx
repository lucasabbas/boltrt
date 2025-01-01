package bolt.godot;

class YSortPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class YSortPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class YSortSignalNames {
}
@:native("godot.YSort")
extern class YSort extends Node2D {
    public var sortEnabled: Bool;
    @:native("__new")
    public function new();
}
