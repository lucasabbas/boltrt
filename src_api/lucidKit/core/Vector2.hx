package lucidKit.core;

@:native("godot.Vector2")
extern class Vector2Native extends NativeObject {
    @:native("__new")
    public function new(x : Float, y : Float);

    public var x: Float;
    public var y: Float;

    @:native("zero")
    public static var ZERO : Vector2Native;

    @:native("one")
    public static var ONE : Vector2Native;

    @:native("inf")
    public static var INF : Vector2Native;

    @:native("up")
    public static var UP : Vector2Native;

    @:native("down")
    public static var DOWN : Vector2Native;

    @:native("left")
    public static var LEFT : Vector2Native;

    @:native("right")
    public static var RIGHT : Vector2Native;

    @:native("abs")
    public function abs() : Vector2Native;

    @:native("angle")
    public function angle() : Vector2Native;

    @:native("angle_to")
    public function angleTo(to : Vector2Native) : Vector2Native;

    @:native("bounce")
    public function bounce(n : Vector2Native) : Vector2Native;

    @:native("cross")
    public function cross(by : Vector2Native) : Float;

    @:native("clamped")
    public function clamped(length : Float) : Vector2Native;

    @:native("cubic_interpolate")
    public function cubicInterpolate(b : Vector2Native, pre_a : Vector2Native, post_b : Vector2, t : Float) : Vector2;

    @:native("direction_to")
    public function directionTo(to : Vector2Native) : Vector2Native;

    @:native("distance_squared_to")
    public function distanceSquaredTo(to : Vector2Native) : Float;

    @:native("distance_to")
    public function distanceTo(to : Vector2Native) : Float;

    @:native("dot")
    public function dot(with : Vector2Native) : Float;

    @:native("floor")
    public function floor() : Vector2Native;

    @:native("inverse")
    public function inverse() : Vector2Native;

    @:native("isNormalized")
    public function isNormalized() : Bool;

    @:native("length")
    public function length() : Float;

    @:native("length_squared")
    public function lengthSquared() : Float;

    @:native("linear_interpolate")
    public function linearInterpolatef(b : Vector2Native, t : Float) : Vector2Native;

    @:native("linear_interpolate")
    public function linearInterpolate(b : Vector2Native, t : Vector2Native) : Vector2Native;

    @:native("limit_length")
    public function limitLength(length : Float) : Vector2Native;

    @:native("max_axis")
    public function maxAxis() : Int;

    @:native("min_axis")
    public function minAxis() : Int;

    @:native("move_toward")
    public function moveToward(to : Vector2Native, delta : Float) : Vector2Native;

    @:native("normalized")
    public function normalized() : Vector2Native;

    @:native("perpendicular")
    public function perpendicular() : Vector2Native;

    @:native("pos_mod")
    public function posModf(mod : Float) : Vector2Native;

    @:native("pos_mod")
    public function posMod(mod : Vector2Native) : Vector2Native;

    @:native("project")
    public function project(by : Vector2Native) : Vector2Native;

    @:native("reflect")
    public function reflect(by : Vector2Native) : Vector2Native;

    @:native("rotated")
    public function rotated(by : Float) : Vector2Native;

    @:native("round")
    public function round() : Vector2Native;

    @:native("sign")
    public function sign() : Vector2Native;

    @:native("slerp")
    public function slerp(b : Vector2Native, t : Float) : Vector2Native;

    @:native("slide")
    public function slide(n : Vector2Native) : Vector2Native;

    @:native("tangent")
    public function tangent() : Vector2Native;
}

abstract Vector2(Vector2Native) from Vector2Native to Vector2Native {
    public function new(x : Float = 0, y : Float = 0) {
        this = new Vector2Native(x, y);
    }

    @:op(a.b) public function fieldRead(name:String)
        {
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

    @:op(a.b()) 
        
    @:op(a.b) 
    public function fieldWrite(name:String, value:String){
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
        if (n == "x") return this.x;
        if (n == "y") return this.y;
        throw "Invalid index";
    }
        
    @:op([]) 
    public function arrayWrite(n:Dynamic, value:Float) {
        if (n == 0) this.x = value;
        else if (n == 1) this.y = value;
        else if (n == "x") this.x = value;
        else if (n == "y") this.y = value;
        else throw "Invalid index";
    }
    
    @:op(A + B)
    public function add(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__("lhs + rhs");
    }
    
    @:op(A - B)
    public function sub(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__("lhs - rhs");
    }
    
    @:op(A * B)
    public function mul(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__("lhs * rhs");
    }
    
    @:op(A / B)
    public function div(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__("lhs / rhs");
    }
    
    @:op(A % B)
    public function mod(rhs: Any) : Vector2 {
        var lhs = this;
        return untyped __lua__("lhs % rhs");
    }
    
    @:op(A == B)
    public function eq(rhs: Vector2Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs == rhs");
    }
    
    @:op(A != B)
    public function neq(rhs: Vector2Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs ~= rhs");
    }
    
    @:op(A < B)
    public function lt(rhs: Vector2Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs < rhs");
    }
    
    @:op(A <= B)
    public function lte(rhs: Vector2Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs <= rhs");
    }
    
    @:op(A > B)
    public function gt(rhs: Vector2Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs > rhs");
    }
    
    @:op(A >= B)
    public function gte(rhs: Vector2Native) : Bool {
        var lhs = this;
        return untyped __lua__("lhs >= rhs");
    }

    public static function toString(v:Vector2Native) {
        return untyped __lua__("v.toString()");
    }
}