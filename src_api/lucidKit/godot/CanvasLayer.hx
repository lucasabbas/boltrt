package lucidKit.godot;

@:native("godot.CanvasLayer")
extern class CanvasLayer extends Node {
    public var custom_viewport: Node;
    public var follow_viewport_enable: Bool;
    public var follow_viewport_scale: Float;
    public var layer: Int;
    public var offset: Vector2;
    public var rotation: Float;
    public var rotation_degrees: Float;
    public var scale: Vector2;
    public var transform: Transform2D;
    public var visible: Bool;
    public function get_canvas(): RID;
    public function get_final_transform(): Transform2D;
    public function hide(): Void;
    public function show(): Void;
    @:native("__new")
    public function new();
}
