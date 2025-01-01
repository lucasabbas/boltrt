package bolt.godot;

class Camera2DAnchorMode {
    public static var FixedTopLeft: Int = 0;
    public static var DragCenter: Int = 1;
}
class Camera2DProcessMode {
    public static var Physics: Int = 0;
    public static var Idle: Int = 1;
}
class Camera2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Camera2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Camera2DSignalNames {
}
@:native("godot.Camera2D")
extern class Camera2D extends Node2D {
    public var anchorMode: Int;
    public var current: Bool;
    public var customViewport: Node;
    public var dragMarginBottom: Float;
    public var dragMarginHEnabled: Bool;
    public var dragMarginLeft: Float;
    public var dragMarginRight: Float;
    public var dragMarginTop: Float;
    public var dragMarginVEnabled: Bool;
    public var editorDrawDragMargin: Bool;
    public var editorDrawLimits: Bool;
    public var editorDrawScreen: Bool;
    public var limitBottom: Int;
    public var limitLeft: Int;
    public var limitRight: Int;
    public var limitSmoothed: Bool;
    public var limitTop: Int;
    public var offset: Vector2;
    public var offsetH: Float;
    public var offsetV: Float;
    public var processMode: Int;
    public var rotating: Bool;
    public var smoothingEnabled: Bool;
    public var smoothingSpeed: Float;
    public var zoom: Vector2;
    public function align(): Void;
    public function clearCurrent(): Void;
    public function forceUpdateScroll(): Void;
    public function getCameraPosition(): Vector2;
    public function getCameraScreenCenter(): Vector2;
    public function getDragMargin(margin: Int): Float;
    public function getLimit(margin: Int): Int;
    public function makeCurrent(): Void;
    public function resetSmoothing(): Void;
    public function setDragMargin(margin: Int, dragMargin: Float): Void;
    public function setLimit(margin: Int, limit: Int): Void;
    @:native("__new")
    public function new();
}
