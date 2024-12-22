package lucidKit.godot;

@:native("godot.Sprite3D")
extern class Sprite3D extends SpriteBase3D {
    public var frame: Int;
    public var frame_coords: Vector2;
    public var hframes: Int;
    public var region_enabled: Bool;
    public var region_rect: Rect2;
    public var texture: Texture;
    public var vframes: Int;
    @:native("__new")
    public function new();
}
