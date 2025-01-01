package bolt.godot;

class ReflectionProbeUpdateMode {
    public static var Once: Int = 0;
    public static var Always: Int = 1;
}
class ReflectionProbePortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class ReflectionProbeMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ReflectionProbePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ReflectionProbePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ReflectionProbeSignalNames {
}
@:native("godot.ReflectionProbe")
extern class ReflectionProbe extends VisualInstance {
    public var boxProjection: Bool;
    public var cullMask: Int;
    public var enableShadows: Bool;
    public var extents: Vector3;
    public var intensity: Float;
    public var interiorAmbientColor: Color;
    public var interiorAmbientContrib: Float;
    public var interiorAmbientEnergy: Float;
    public var interiorEnable: Bool;
    public var maxDistance: Float;
    public var originOffset: Vector3;
    public var updateMode: Int;
    @:native("__new")
    public function new();
}
