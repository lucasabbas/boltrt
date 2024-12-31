package lucidKit.godot;

class CanvasModulatePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CanvasModulatePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CanvasModulateSignalNames {
}
@:native("godot.CanvasModulate")
extern class CanvasModulate extends Node2D {
    public var color: Color;
    @:native("__new")
    public function new();
}
