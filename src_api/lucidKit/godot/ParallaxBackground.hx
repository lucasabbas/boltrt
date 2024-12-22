package lucidkit.godot;

@:native("godot.ParallaxBackground")
extern class ParallaxBackground extends CanvasLayer {
    public var layer: Int;
    public var scroll_base_offset: Vector2;
    public var scroll_base_scale: Vector2;
    public var scroll_ignore_camera_zoom: Bool;
    public var scroll_limit_begin: Vector2;
    public var scroll_limit_end: Vector2;
    public var scroll_offset: Vector2;
}
