package bolt.godot;

class ImmediateGeometryCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class ImmediateGeometryLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class ImmediateGeometryPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class ImmediateGeometryMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ImmediateGeometryPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ImmediateGeometryPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ImmediateGeometrySignalNames {
}
@:native("godot.ImmediateGeometry")
extern class ImmediateGeometry extends GeometryInstance {
    public function addSphere(lats: Int, lons: Int, radius: Float, addUv: Bool = true): Void;
    public function addVertex(position: GdVector3): Void;
    public function begin(primitive: Int, texture: Texture): Void;
    public function clear(): Void;
    public function end(): Void;
    public function setColor(color: Color): Void;
    public function setNormal(normal: GdVector3): Void;
    public function setTangent(tangent: Plane): Void;
    public function setUv(uv: GdVector2): Void;
    public function setUv2(uv: GdVector2): Void;
    @:native("__new")
    public function new();
}
