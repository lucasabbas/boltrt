package lucidKit.godot;

@:native("godot.Sprite")
extern class Sprite extends Node2D {
    public var centered: Bool;
    public var flipH: Bool;
    public var flipV: Bool;
    public var frame: Int;
    public var frameCoords: Vector2;
    public var hframes: Int;
    public var normalMap: Texture;
    public var offset: Vector2;
    public var regionEnabled: Bool;
    public var regionFilterClip: Bool;
    public var regionRect: Rect2;
    public var texture: Texture;
    public var vframes: Int;
    public function getRect(): Rect2;
    public function isPixelOpaque(pos: GdVector2): Bool;
    @:native("__new")
    public function new();
}
