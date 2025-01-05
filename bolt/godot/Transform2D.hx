package bolt.godot;

class Transform2DSignalNames {
}
@:native("godot.Transform2D")
extern class Transform2D extends bolt.core.MonoObject {
    public var origin: Vector2;
    public var x: Vector2;
    public var y: Vector2;
    @:native("__new")
    public function new(from: Transform);
    @:native("__new")
    public static function xAxisYAxisOrigin(xAxis: GdVector2, yAxis: GdVector2, origin: GdVector2): Transform2D;
    @:native("__new")
    public static function rotationPosition(rotation: Float, position: GdVector2): Transform2D;
    public function affineInverse(): Transform2D;
    public function basisXform(v: GdVector2): Vector2;
    public function basisXformInv(v: GdVector2): Vector2;
    public function determinant(): Float;
    public function getOrigin(): Vector2;
    public function getRotation(): Float;
    public function getScale(): Vector2;
    public function interpolateWith(transform: Transform2D, weight: Float): Transform2D;
    public function inverse(): Transform2D;
    public function isEqualApprox(transform: Transform2D): Bool;
    public function orthonormalized(): Transform2D;
    public function rotated(angle: Float): Transform2D;
    public function scaled(scale: GdVector2): Transform2D;
    public function translated(offset: GdVector2): Transform2D;
    public function xform(v: Dynamic): Dynamic;
    public function xformInv(v: Dynamic): Dynamic;
}
