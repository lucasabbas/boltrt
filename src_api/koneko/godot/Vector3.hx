package koneko.godot;

import koneko.core.*;

@:native("godot.Vector3")
extern class Vector3Native extends NativeObject {
    @:native("__new")
    public function new(x : Float, y : Float, z : Float);

    public var x: Float;
    public var y: Float;
    public var z: Float;

    @:native("zero")
    public static var ZERO : Vector3;

    @:native("one")
    public static var ONE : Vector3;

    @:native("inf")
    public static var INF : Vector3;

    @:native("up")
    public static var UP : Vector3;

    @:native("down")
    public static var DOWN : Vector3;

    @:native("left")
    public static var LEFT : Vector3;

    @:native("right")
    public static var RIGHT : Vector3;

    @:native("forward")
    public static var FORWARD : Vector3;

    @:native("back")
    public static var BACK : Vector3;

    @:native("model_left")
    public static var MODEL_LEFT : Vector3;

    @:native("model_right")
    public static var MODEL_RIGHT : Vector3;

    @:native("model_top")
    public static var MODEL_TOP : Vector3;

    @:native("model_bottom")
    public static var MODEL_BOTTOM : Vector3;

    @:native("model_front")
    public static var MODEL_FRONT : Vector3;

    @:native("model_rear")
    public static var MODEL_REAR : Vector3;

    @:native("abs")
    public function abs() : Vector3;
    
    @:native("angle_to")
    public function angleTo(to : Vector3) : Float;

    @:native("angle_to_point")
    public function angleToPoint(to : Vector3) : Float;

    @:native("bounce")
    public function bounce(n : Vector3) : Vector3;

    @:native("ceil")
    public function ceil() : Vector3;

    @:native("cross")
    public function cross(b : Vector3) : Vector3;

    @:native("cubic_interpolate")
    public function cubicInterpolate(b : Vector3, preA : Vector3, postB : Vector3, weight : Float) : Vector3;

    @:native("direction_to")
    public function directionTo(to : Vector3) : Vector3;

    @:native("distance_to")
    public function distanceTo(to : Vector3) : Float;

    @:native("distance_squared_to")
    public function distanceSquaredTo(to : Vector3) : Float;

    @:native("dot")
    public function dot(with : Vector3) : Float;

    @:native("floor")
    public function floor() : Vector3;

    @:native("inverse")
    public function inverse() : Vector3;

    @:native("is_normalized")
    public function isNormalized() : Bool;

    @:native("length")
    public function length() : Float;

    @:native("length_squared")
    public function lengthSquared() : Float;

    @:native("linear_interpolate")
    public function linearInterpolate(to : Vector3, weight : Float) : Vector3;

    @:native("limit_length")
    public function limitLength(length : Float) : Vector3;

    @:native("max_axis")
    public function maxAxis() : Int;

    @:native("min_axis")
    public function minAxis() : Int;

    @:native("move_toward")
    public function moveToward(to : Vector3, delta : Float) : Vector3;

    @:native("normalized")
    public function normalized() : Vector3;

    @:native("outer")
    public function outer(with : Vector3) : Dynamic;

    @:native("pos_mod")
    public function posModf(mod : Float) : Vector3;

    @:native("pos_mod")
    public function posMod(modv : Vector3) : Vector3;

    @:native("project")
    public function project(onNormal : Vector3) : Vector3;

    @:native("reflect")
    public function reflect(normal : Vector3) : Vector3;

    @:native("rotated")
    public function rotated(axis : Vector3, angle : Float) : Vector3;

    @:native("round")
    public function round() : Vector3;

    @:native("sign")
    public function sign() : Vector3;

    @:native("signed_angle_to")
    public function signedAngleTo(to : Vector3, axis : Vector3) : Float;

    @:native("slerp")
    public function slerp(to : Vector3, weight : Float) : Vector3;

    @:native("slide")
    public function slide(normal : Vector3) : Vector3;

    @:native("snapped")
    public function snapped(step : Vector3) : Vector3;

    @:native("snapped")
    public function snappedf(step : Float) : Vector3;
}

abstract Vector3(Vector3Native) from Vector3Native {
    public function new(x : Float = 0, y : Float = 0, z : Float = 0) {
        this = new Vector3Native(x, y, z);
    }

    @:op(a.b) 
    public function fieldRead(name:String) {
        if (name == "toString") {
            return function() : String {
                var v = this;
                return untyped __lua__("v.toString()");
            }
        } else if (Reflect.hasField(this, name)) {
            return Reflect.field(this, name);
        } else {
            throw "Invalid field";
        }
    }
        
    @:op(a.b) 
    public function fieldWrite(name:String, value:String) {
        if (Reflect.hasField(this, name)) {
            Reflect.setField(this, name, value);
        } else {
            throw "Invalid field";
        }
    }
    
    @:op([]) 
    public function arrayRead(n:Dynamic) {
        if (n == 0) return this.x;
        if (n == 1) return this.y;
        if (n == 2) return this.z;
        if (n == "x") return this.x;
        if (n == "y") return this.y;
        if (n == "z") return this.z; 
        throw "Invalid index";
    }
        
    @:op([]) 
    public function arrayWrite(n:Dynamic, value:Float) {
        if (n == 0) this.x = value;
        else if (n == 1) this.y = value;
        else if (n == 2) this.z = value;
        else if (n == "x") this.x = value;
        else if (n == "y") this.y = value;
        else if (n == "z") this.z = value;
        else throw "Invalid index";
    }
    
    @:op(A + B)
    public function add(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__("lhs + rhs");
    }
    
    @:op(A - B)
    public function sub(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__("lhs - rhs");
    }
    
    @:op(A * B)
    public function mul(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__("lhs * rhs");
    }
    
    @:op(A / B)
    public function div(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__("lhs / rhs");
    }
    
    @:op(A % B)
    public function mod(rhs: Any) : Vector3 {
        var lhs = this;
        return untyped __lua__("lhs % rhs");
    }
    
    @:op(A == B)
    public function eq(rhs: Vector3Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs == rhs");
    }
    
    @:op(A != B)
    public function neq(rhs: Vector3Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs ~= rhs");
    }
    
    @:op(A < B)
    public function lt(rhs: Vector3Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs < rhs");
    }
    
    @:op(A <= B)
    public function lte(rhs: Vector3Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs <= rhs");
    }
    
    @:op(A > B)
    public function gt(rhs: Vector3Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs > rhs");
    }
    
    @:op(A >= B)
    public function gte(rhs: Vector3Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs >= rhs");
    }

    public static function toString(v:Vector3Native) {
        return untyped __lua__("v.toString()");
    }
}