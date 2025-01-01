package bolt.godot;

class CanvasLayerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CanvasLayerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CanvasLayerSignalNames {
    public static var visibilityChanged: String = "visibility_changed";
}
@:native("godot.CanvasLayer")
extern class CanvasLayer extends Node {
    public var customViewport: Node;
    public var followViewportEnable: Bool;
    public var followViewportScale: Float;
    public var layer: Int;
    public var offset: Vector2;
    public var rotation: Float;
    public var rotationDegrees: Float;
    public var scale: Vector2;
    public var transform: Transform2D;
    public var visible: Bool;
    public function getCanvas(): RID;
    public function getFinalTransform(): Transform2D;
    public function hide(): Void;
    public function show(): Void;
    @:native("__new")
    public function new();
}
