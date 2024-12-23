package lucidKit.godot;

@:native("godot.Texture")
extern class Texture extends Resource {
    public var flags: Int;
    public function draw(canvasItem: RID, position: GdVector2, modulate: Color, transpose: Bool = false, normalMap: Texture): Void;
    public function drawRect(canvasItem: RID, rect: Rect2, tile: Bool, modulate: Color, transpose: Bool = false, normalMap: Texture): Void;
    public function drawRectRegion(canvasItem: RID, rect: Rect2, srcRect: Rect2, modulate: Color, transpose: Bool = false, normalMap: Texture, clipUv: Bool = true): Void;
    public function getData(): Image;
    public function getHeight(): Int;
    public function getSize(): Vector2;
    public function getWidth(): Int;
    public function hasAlpha(): Bool;
    @:native("__new")
    public function new();
}
