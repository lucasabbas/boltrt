package bolt.godot;

class TouchScreenButtonVisibilityMode {
    public static var Always: Int = 0;
    public static var TouchscreenOnly: Int = 1;
}
class TouchScreenButtonPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class TouchScreenButtonPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class TouchScreenButtonSignalNames {
    public static var pressed: String = "pressed";
    public static var released: String = "released";
}
@:native("godot.TouchScreenButton")
extern class TouchScreenButton extends Node2D {
    public var action: String;
    public var bitmask: BitMap;
    public var normal: Texture;
    public var passbyPress: Bool;
    public var pressed: Texture;
    public var shape: Shape2D;
    public var shapeCentered: Bool;
    public var shapeVisible: Bool;
    public var visibilityMode: Int;
    public function isPressed(): Bool;
    @:native("__new")
    public function new();
}
