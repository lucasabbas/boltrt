package bolt.godot;

class MeshInstanceCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class MeshInstanceLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class MeshInstancePortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class MeshInstanceMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class MeshInstancePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class MeshInstancePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class MeshInstanceSignalNames {
}
@:native("godot.MeshInstance")
extern class MeshInstance extends GeometryInstance {
    public var mesh: Mesh;
    public var skeleton: NodePath;
    public var skin: Skin;
    public var softwareSkinningTransformNormals: Bool;
    public function createConvexCollision(clean: Bool = true, simplify: Bool = false): Void;
    public function createDebugTangents(): Void;
    public function createMultipleConvexCollisions(): Void;
    public function createTrimeshCollision(): Void;
    public function getActiveMaterial(surface: Int): Material;
    public function getSurfaceMaterial(surface: Int): Material;
    public function getSurfaceMaterialCount(): Int;
    public function isMergeableWith(otherMeshInstance: Node, shadowsOnly: Bool = false): Bool;
    public function mergeMeshes(meshInstances: Array<Dynamic>, useGlobalSpace: Bool = false, checkCompatibility: Bool = true, shadowsOnly: Bool = false): Bool;
    public function setSurfaceMaterial(surface: Int, material: Material): Void;
    @:native("__new")
    public function new();
}
