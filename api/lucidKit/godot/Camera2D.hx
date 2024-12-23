package lucidKit.godot;

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
