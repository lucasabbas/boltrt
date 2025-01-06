package magicrt.godot;

class CullInstancePortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class CullInstanceMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CullInstancePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CullInstancePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CullInstanceSignalNames {
}
@:native("godot.CullInstance")
extern class CullInstance extends Spatial {
    public var allowMerging: Bool;
    public var autoplacePriority: Int;
    public var includeInBound: Bool;
    public var portalMode: Int;
    @:native("__new")
    public function new();
}
