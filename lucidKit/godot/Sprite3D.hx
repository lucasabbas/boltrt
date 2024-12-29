package lucidKit.godot;

@:native("godot.Sprite3D")
extern class Sprite3D extends SpriteBase3D {
    public var frame: Int;
    public var frameCoords: Vector2;
    public var hframes: Int;
    public var regionEnabled: Bool;
    public var regionRect: Rect2;
    public var texture: Texture;
    public var vframes: Int;
    @:native("__new")
    public function new();
}
