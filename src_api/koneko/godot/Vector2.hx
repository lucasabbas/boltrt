package koneko.godot;

import koneko.core.*;

@:native("godot.Vector2")
extern class Vector2Native {
    @:native("__new")
    public static function createInstanceWithXYAxis(x : Float, y : Float) : Dynamic;
}
enum Vector2Axis {
    X;
    Y;
}


class Vector2 extends InstanceObject {

    public var x(get, set):Float;

    function get_x() {
        var untypedX = untyped this.instance.x;
        return untypedX;
    }

    function set_x(value:Float) {
        untyped this.instance.x = value;
        return value;
    }

    public var y(get, set):Float;

    function get_y() {
        var untypedY = untyped this.instance.y;
        return untypedY;
    }

    function set_y(value:Float) {
        untyped this.instance.y = value;
        return value;
    }

    public function new(x : Float, y : Float) {
        this.instance = Vector2Native.createInstanceWithXYAxis(x, y);
    }

    public static function fromInstance(instance : Dynamic) : Vector2 {
        var vector2 = new Vector2(0, 0);
        vector2.instance = instance;
        return vector2;
        
    }

    public function abs() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.abs());
    }

    public function angle() : Float {
        return untyped this.instance.angle();
    }

    public function angleTo(point : Vector2) : Float {
        return untyped this.instance.angleTo(point.instance);
    }

    public function angleToPoint(point : Vector2) : Float {
        return untyped this.instance.angleToPoint(point.instance);
    }

    public function aspect() : Float {
        return untyped this.instance.aspect();
    }

    public function bounce(n : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.bounce(n.instance));
    }

    public function ceil() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.ceil());
    }

    public function cross(b : Vector2) : Float {
        return untyped this.instance.cross(b.instance);
    }

    public function cubicInterpolate(b : Vector2, preA : Vector2, postB : Vector2, weight : Float) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.cubicInterpolate(b.instance, preA.instance, postB.instance, weight));
    }

    public function directionTo(b : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.directionTo(b.instance));
    }

    public function dot(with : Vector2) : Float {
        return untyped this.instance.dot(with.instance);
    }

    public function floor() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.floor());
    }

    public function inverse() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.inverse());
    }

    public function isNormalized() : Bool {
        return untyped this.instance.isNormalized();
    }

    public function length() : Float {
        return untyped this.instance.length();
    }

    public function lengthSquared() : Float {
        return untyped this.instance.lengthSquared();
    }

    public function linearInterpolatef(b : Vector2, t : Float) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.linearInterpolate(b.instance, t));
    }

    public function linearInterpolate(to :Vector2, weight : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.linearInterpolate(to.instance, weight.instance));
    }

    public function limitLength(length : Float = 1) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.limitLength(length));
    }

    public function maxAxis() {
        var axis = untyped this.instance.maxAxis();
        if (axis == 0) {
            return Vector2Axis.X;
        } else {
            return Vector2Axis.Y;
        }
    }

    public function minAxis() {
        var axis = untyped this.instance.minAxis();
        if (axis == 0) {
            return Vector2Axis.X;
        } else {
            return Vector2Axis.Y;
        }
    }

    public function moveToward(to : Vector2, delta : Float) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.moveToward(to.instance, delta));
    }

    public function normalized() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.normalized());
    }

    public function perpendicular() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.perpendicular());
    }

    public function posModf(mod : Float) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.posMod(mod));
    }

    public function posMod(mod : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.posMod(mod.instance));
    }

    public function project(b : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.project(b.instance));
    }

    public function reflect(n : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.reflect(n.instance));
    }

    public function rotated(angle : Float) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.rotated(angle));
    }

    public function round() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.round());
    }

    public function sign() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.sign());
    }

    public function slerp(to : Vector2, weight : Float) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.slerp(to.instance, weight));
    }

    public function slide(n : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.slide(n.instance));
    }

    public function snapped(by : Vector2) : Vector2 {
        return Vector2.fromInstance(untyped this.instance.snapped(by.instance));
    }

    public function tangent() : Vector2 {
        return Vector2.fromInstance(untyped this.instance.tangent());
    }

    @:op(A + B)
    public function add(rhs: Any) : Vector3 {
        if (Std.isOfType(rhs, Vector3)) {
            return Vector3.fromInstance(untyped this.instance + rhs.instance);
        } else {
            return Vector3.fromInstance(untyped this.instance + rhs);
        }
    }

    @:op(A - B)
    public function subtract(rhs: Any) : Vector3 {
        if (Std.isOfType(rhs, Vector3)) {
            return Vector3.fromInstance(untyped this.instance - rhs.instance);
        } else {
            return Vector3.fromInstance(untyped this.instance - rhs);
        }
    }

    @:op(A * B)
    public function multiply(rhs: Any) : Vector3 {
        if (Std.isOfType(rhs, Vector3)) {
            return Vector3.fromInstance(untyped this.instance * rhs.instance);
        } else {
            return Vector3.fromInstance(untyped this.instance * rhs);
        }
    }

    @:op(A / B)
    public function divide(rhs: Any) : Vector3 {
        if (Std.isOfType(rhs, Vector3)) {
            return Vector3.fromInstance(untyped this.instance / rhs.instance);
        } else {
            return Vector3.fromInstance(untyped this.instance / rhs);
        }
    }

    @:op(A % B)
    public function modulo(rhs: Any) : Vector3 {
        if (Std.isOfType(rhs, Vector3)) {
            return Vector3.fromInstance(untyped this.instance % rhs.instance);
        } else {
            return Vector3.fromInstance(untyped this.instance % rhs);
        }
    }

    @:op(a == b)
    public function equal(rhs: Vector3) : Bool {
        return untyped this.instance == rhs.instance;
    }

    @:op(a != b)
    public function noequal(rhs: Vector3) : Bool {
        return untyped this.instance != rhs.instance;
    }

    @:op(a < b)
    public function lessthan(rhs: Vector3) : Bool {
        return untyped this.instance < rhs.instance;
    }

    @:op(a <= b)
    public function lessthanequal(rhs: Vector3) : Bool {
        return untyped this.instance <= rhs.instance;
    }

    @:op(a > b)
    public function greaterthan(rhs: Vector3) : Bool {
        return untyped this.instance > rhs.instance;
    }

    @:op(a >= b)
    public function greaterthanequal(rhs: Vector3) : Bool {
        return untyped this.instance >= rhs.instance;
    }

    public function isEqualApprox(other : Vector3) : Bool {
        return untyped this.instance.isEqualApprox(other.instance);
    }

    public function isZeroApprox() : Bool {
        return untyped this.instance.isZeroApprox();
    }

    public function toString() : String {
        return untyped __lua__("self.instance.toString()");
    }
}