package bolt.godot;

class ArrayMeshBlendShapeMode {
    public static var Normalized: Int = 0;
    public static var Relative: Int = 1;
}
class ArrayMeshSignalNames {
}
@:native("godot.ArrayMesh")
extern class ArrayMesh extends Mesh {
    public var blendShapeMode: Int;
    public var customAabb: AABB;
    public function addBlendShape(name: String): Void;
    public function addSurfaceFromArrays(primitive: Int, arrays: Array<Dynamic>, blendShapes: Array<Dynamic>, compressFlags: Int = 2194432): Void;
    public function clearBlendShapes(): Void;
    public function clearSurfaces(): Void;
    public function getBlendShapeCount(): Int;
    public function getBlendShapeName(index: Int): String;
    public function lightmapUnwrap(transform: Transform, texelSize: Float): Int;
    public function regenNormalmaps(): Void;
    public function setBlendShapeName(index: Int, name: String): Void;
    public function surfaceFindByName(name: String): Int;
    public function surfaceGetArrayIndexLen(surfIdx: Int): Int;
    public function surfaceGetArrayLen(surfIdx: Int): Int;
    public function surfaceGetFormat(surfIdx: Int): Int;
    public function surfaceGetName(surfIdx: Int): String;
    public function surfaceGetPrimitiveType(surfIdx: Int): Int;
    public function surfaceRemove(surfIdx: Int): Void;
    public function surfaceSetName(surfIdx: Int, name: String): Void;
    public function surfaceUpdateRegion(surfIdx: Int, offset: Int, data: PoolByteArray): Void;
    @:native("__new")
    public function new();
}
