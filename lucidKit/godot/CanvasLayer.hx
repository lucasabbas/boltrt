package lucidKit.godot;

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
