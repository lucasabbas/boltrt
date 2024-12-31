package lucidKit.godot;

class Vector3SignalNames {
}
@:native("godot.Vector3")
extern class GdVector3 extends lucidKit.core.MonoObject {
    public var x: Float;
    public var y: Float;
    public var z: Float;
    @:native("__new")
    public function new(x: Float, y: Float, z: Float);
    public function abs(): Vector3;
    public function angleTo(to: GdVector3): Float;
    public function bounce(n: GdVector3): Vector3;
    public function ceil(): Vector3;
    public function cross(b: GdVector3): Vector3;
    public function cubicInterpolate(b: GdVector3, preA: GdVector3, postB: GdVector3, weight: Float): Vector3;
    public function directionTo(b: GdVector3): Vector3;
    public function distanceSquaredTo(b: GdVector3): Float;
    public function distanceTo(b: GdVector3): Float;
    public function dot(b: GdVector3): Float;
    public function floor(): Vector3;
    public function inverse(): Vector3;
    public function isEqualApprox(v: GdVector3): Bool;
    public function isNormalized(): Bool;
    public function isZeroApprox(): Bool;
    public function length(): Float;
    public function lengthSquared(): Float;
    public function limitLength(length: Float = 1.0): Vector3;
    public function linearInterpolate(to: GdVector3, weight: Float): Vector3;
    public function maxAxis(): Int;
    public function minAxis(): Int;
    public function moveToward(to: GdVector3, delta: Float): Vector3;
    public function normalized(): Vector3;
    public function outer(b: GdVector3): Basis;
    public function posmod(mod: Float): Vector3;
    public function posmodv(modv: GdVector3): Vector3;
    public function project(b: GdVector3): Vector3;
    public function reflect(n: GdVector3): Vector3;
    public function rotated(axis: GdVector3, angle: Float): Vector3;
    public function round(): Vector3;
    public function sign(): Vector3;
    public function signedAngleTo(to: GdVector3, axis: GdVector3): Float;
    public function slerp(to: GdVector3, weight: Float): Vector3;
    public function slide(n: GdVector3): Vector3;
    public function snapped(by: GdVector3): Vector3;
    public function toDiagonalMatrix(): Basis;
}
