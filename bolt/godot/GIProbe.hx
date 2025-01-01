package bolt.godot;

class GIProbeSubdiv {
    public static var Subdiv64: Int = 0;
    public static var Subdiv128: Int = 1;
    public static var Subdiv256: Int = 2;
    public static var Subdiv512: Int = 3;
    public static var Max: Int = 4;
}
class GIProbePortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class GIProbeMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GIProbePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class GIProbePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GIProbeSignalNames {
}
@:native("godot.GIProbe")
extern class GIProbe extends VisualInstance {
    public var bias: Float;
    public var compress: Bool;
    public var data: GIProbeData;
    public var dynamicRange: Int;
    public var energy: Float;
    public var extents: Vector3;
    public var interior: Bool;
    public var normalBias: Float;
    public var propagation: Float;
    public var subdiv: Int;
    public function bake(fromNode: Node, createVisualDebug: Bool = false): Void;
    public function debugBake(): Void;
    @:native("__new")
    public function new();
}
