package lucidware.godot;

import lucidware.core.*;

@:native("godot.Vector2")
extern class Vector2Native {
    @:native("__new")
    public static function createInstanceWithXYAxis(x : Float, y : Float) : Dynamic;
}
enum Vector2Axis {
    X;
    Y;
}


class Vector2  extends InstanceObject {
    @:op([]) public function arrayRead(n:Int) {
        if (n == 0) return x;
        if (n == 1) return y;
        throw "Invalid index";
    }

    @:op([]) public function arrayRead(n:String) {
        if (n == "x") return x;
        if (n == "y") return y;
        throw "Invalid index";
    }

    public var x(get, set):Float;

    function get_x() {
        var untypedX = untyped this.instance.x;
        return cast untypedX Float;
    }

    function set_x(value:Float) {
        untyped this.instance.x = value;
        return value;
    }

    public var y(get, set):Float;

    function get_y() {
        var untypedY = untyped this.instance.y;
        return cast untypedY Float;
    }

    function set_y(value:Float) {
        untyped this.instance.y = value;
        return value;
    }

    public function new() {
        this.instance = Vector2Native.createInstance();
    }

    public function new(x : Float, y : Float) {
        this.instance = Vector2Native.createInstanceWithXYAxis(x, y);
    }

    public function new(instance : Dynamic) {
        this.instance = instance;
    }

    public function abs() : Vector2 {
        return new Vector2(untyped this.instance.abs());
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
        return new Vector2(untyped this.instance.bounce(n.instance));
    }

    public function ceil() : Vector2 {
        return new Vector2(untyped this.instance.ceil());
    }

    public function cross(b : Vector2) : Float {
        return untyped this.instance.cross(b.instance);
    }

    public function cubicInterpolate(b : Vector2, preA : Vector2, postB : Vector2, weight : Float) : Vector2 {
        return new Vector2(untyped this.instance.cubicInterpolate(b.instance, preA.instance, postB.instance, weight));
    }

    public function directionTo(b : Vector2) : Vector2 {
        return new Vector2(untyped this.instance.directionTo(b.instance));
        
    }


}