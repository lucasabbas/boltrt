package magicrt.godot;

class LODMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LODPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class LODPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LODSignalNames {
}
@:native("godot.LOD")
extern class LOD extends Spatial {
    public var hysteresis: Float;
    public var lodPriority: Int;
    @:native("__new")
    public function new();
}
