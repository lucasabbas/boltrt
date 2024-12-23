package lucidKit.godot.extensions;

import lucidKit.godot.Camera;
import lucidKit.godot.Vector3;
import lucidKit.godot.Spatial;

@:native("gdx.FreeLookCamera")
extern class FreeLookCamera extends Camera {
    public var sensitivity : Float;
    public var controllerSensitivity : Float;
    public var defaultVelocity : Float;
    public var speedScale : Float;
    public var boostSpeedMultiplier : Float;
    public var maxSpeed : Float;
    public var minSpeed : Float;
    public var initialPosition : Vector3;
    public var initialRotation : Vector3;
    public var active : Bool;
    public var transformNode : Spatial;
    @:native("__new")
    public function new();
    public function reset() : Void;
    public function getAxis(bool1 : Bool, bool2 : Bool) : Float;
    public function getCombinedAxis(axis1 : Float, axis2 : Float) : Float;
    public function roundAxis(axis : Float) : Float;
}