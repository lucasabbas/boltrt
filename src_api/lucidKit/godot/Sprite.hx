package lucidKit.godot;

@:native("godot.Sprite")
extern class Sprite extends Node2D {
    public var centered: Bool;
    public var flip_h: Bool;
    public var flip_v: Bool;
    public var frame: Int;
    public var frame_coords: Vector2;
    public var hframes: Int;
    public var normal_map: Texture;
    public var offset: Vector2;
    public var region_enabled: Bool;
    public var region_filter_clip: Bool;
    public var region_rect: Rect2;
    public var texture: Texture;
    public var vframes: Int;
    public function get_rect(): Rect2;
    public function is_pixel_opaque(pos: GdVector2): Bool;
    @:native("__new")
    public function new();
}
