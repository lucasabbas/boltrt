package lucidKit.godot;

class CurveSignalNames {
    public static var rangeChanged: String = "range_changed";
}
@:native("godot.Curve")
extern class Curve extends Resource {
    public var bakeResolution: Int;
    public var maxValue: Float;
    public var minValue: Float;
    public function addPoint(position: GdVector2, leftTangent: Float = 0, rightTangent: Float = 0, leftMode: Int = 0, rightMode: Int = 0): Int;
    public function bake(): Void;
    public function cleanDupes(): Void;
    public function clearPoints(): Void;
    public function getPointCount(): Int;
    public function getPointLeftMode(index: Int): Int;
    public function getPointLeftTangent(index: Int): Float;
    public function getPointPosition(index: Int): Vector2;
    public function getPointRightMode(index: Int): Int;
    public function getPointRightTangent(index: Int): Float;
    public function interpolate(offset: Float): Float;
    public function interpolateBaked(offset: Float): Float;
    public function removePoint(index: Int): Void;
    public function setPointLeftMode(index: Int, mode: Int): Void;
    public function setPointLeftTangent(index: Int, tangent: Float): Void;
    public function setPointOffset(index: Int, offset: Float): Int;
    public function setPointRightMode(index: Int, mode: Int): Void;
    public function setPointRightTangent(index: Int, tangent: Float): Void;
    public function setPointValue(index: Int, y: Float): Void;
    @:native("__new")
    public function new();
}
