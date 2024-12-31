package lucidKit.godot;

class Listener2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Listener2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Listener2DSignalNames {
}
@:native("godot.Listener2D")
extern class Listener2D extends Node2D {
    public function clearCurrent(): Void;
    public function isCurrent(): Bool;
    public function makeCurrent(): Void;
    @:native("__new")
    public function new();
}
