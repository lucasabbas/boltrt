package bolt.godot;

class GeometryInstanceCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class GeometryInstanceLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class GeometryInstancePortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class GeometryInstanceMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GeometryInstancePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class GeometryInstancePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GeometryInstanceSignalNames {
}
@:native("godot.GeometryInstance")
extern class GeometryInstance extends VisualInstance {
    public var castShadow: Int;
    public var extraCullMargin: Float;
    public var generateLightmap: Bool;
    public var lightmapScale: Int;
    public var materialOverlay: Material;
    public var materialOverride: Material;
    public var useInBakedLight: Bool;
    public function getFlag(flag: Int): Bool;
    public function setCustomAabb(aabb: AABB): Void;
    public function setFlag(flag: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
