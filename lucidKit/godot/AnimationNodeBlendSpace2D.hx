package lucidKit.godot;

class AnimationNodeBlendSpace2DBlendMode {
    public static var Interpolated: Int = 0;
    public static var Discrete: Int = 1;
    public static var DiscreteCarry: Int = 2;
}
class AnimationNodeBlendSpace2DSignalNames {
    public static var trianglesUpdated: String = "triangles_updated";
}
@:native("godot.AnimationNodeBlendSpace2D")
extern class AnimationNodeBlendSpace2D extends AnimationRootNode {
    public var autoTriangles: Bool;
    public var blendMode: Int;
    public var maxSpace: Vector2;
    public var minSpace: Vector2;
    public var snap: Vector2;
    public var xLabel: String;
    public var yLabel: String;
    public function addBlendPoint(node: AnimationRootNode, pos: GdVector2, atIndex: Int = -1): Void;
    public function addTriangle(x: Int, y: Int, z: Int, atIndex: Int = -1): Void;
    public function getBlendPointCount(): Int;
    public function getBlendPointNode(point: Int): AnimationRootNode;
    public function getBlendPointPosition(point: Int): Vector2;
    public function getTriangleCount(): Int;
    public function getTrianglePoint(triangle: Int, point: Int): Int;
    public function removeBlendPoint(point: Int): Void;
    public function removeTriangle(triangle: Int): Void;
    public function setBlendPointNode(point: Int, node: AnimationRootNode): Void;
    public function setBlendPointPosition(point: Int, pos: GdVector2): Void;
    @:native("__new")
    public function new();
}
