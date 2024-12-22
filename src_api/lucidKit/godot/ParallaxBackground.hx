package lucidKit.godot;

@:native("godot.ParallaxBackground")
extern class ParallaxBackground extends CanvasLayer {
    public var scrollBaseOffset: Vector2;
    public var scrollBaseScale: Vector2;
    public var scrollIgnoreCameraZoom: Bool;
    public var scrollLimitBegin: Vector2;
    public var scrollLimitEnd: Vector2;
    public var scrollOffset: Vector2;
    @:native("__new")
    public function new();
}
