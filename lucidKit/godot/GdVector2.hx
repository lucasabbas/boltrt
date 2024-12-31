package lucidKit.godot;

class Vector2SignalNames {
}
@:native("godot.Vector2")
extern class GdVector2 extends lucidKit.core.MonoObject {
    public var x: Float;
    public var y: Float;
    @:native("__new")
    public function new(x: Float, y: Float);
    public function abs(): Vector2;
    public function angle(): Float;
    public function angleTo(to: GdVector2): Float;
    public function angleToPoint(to: GdVector2): Float;
    public function aspect(): Float;
    public function bounce(n: GdVector2): Vector2;
    public function ceil(): Vector2;
    public function clamped(length: Float): Vector2;
    public function cross(with: GdVector2): Float;
    public function cubicInterpolate(b: GdVector2, preA: GdVector2, postB: GdVector2, weight: Float): Vector2;
    public function directionTo(b: GdVector2): Vector2;
    public function distanceSquaredTo(to: GdVector2): Float;
    public function distanceTo(to: GdVector2): Float;
    public function dot(with: GdVector2): Float;
    public function floor(): Vector2;
    public function isEqualApprox(v: GdVector2): Bool;
    public function isNormalized(): Bool;
    public function isZeroApprox(): Bool;
    public function length(): Float;
    public function lengthSquared(): Float;
    public function limitLength(length: Float = 1.0): Vector2;
    public function linearInterpolate(to: GdVector2, weight: Float): Vector2;
    public function moveToward(to: GdVector2, delta: Float): Vector2;
    public function normalized(): Vector2;
    public function posmod(mod: Float): Vector2;
    public function posmodv(modv: GdVector2): Vector2;
    public function project(b: GdVector2): Vector2;
    public function reflect(n: GdVector2): Vector2;
    public function rotated(angle: Float): Vector2;
    public function round(): Vector2;
    public function sign(): Vector2;
    public function slerp(to: GdVector2, weight: Float): Vector2;
    public function slide(n: GdVector2): Vector2;
    public function snapped(by: GdVector2): Vector2;
    public function tangent(): Vector2;
}
