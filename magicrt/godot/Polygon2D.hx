package magicrt.godot;

class Polygon2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Polygon2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Polygon2DSignalNames {
}
@:native("godot.Polygon2D")
extern class Polygon2D extends Node2D {
    public var antialiased: Bool;
    public var bones: Array<Dynamic>;
    public var color: Color;
    public var internalVertexCount: Int;
    public var invertBorder: Float;
    public var invertEnable: Bool;
    public var offset: Vector2;
    public var polygon: PoolVector2Array;
    public var polygons: Array<Dynamic>;
    public var skeleton: NodePath;
    public var texture: Texture;
    public var textureOffset: Vector2;
    public var textureRotation: Float;
    public var textureRotationDegrees: Float;
    public var textureScale: Vector2;
    public var uv: PoolVector2Array;
    public var vertexColors: PoolColorArray;
    public function addBone(path: NodePath, weights: PoolRealArray): Void;
    public function clearBones(): Void;
    public function eraseBone(index: Int): Void;
    public function getBoneCount(): Int;
    public function getBonePath(index: Int): NodePath;
    public function getBoneWeights(index: Int): PoolRealArray;
    public function setBonePath(index: Int, path: NodePath): Void;
    public function setBoneWeights(index: Int, weights: PoolRealArray): Void;
    @:native("__new")
    public function new();
}
