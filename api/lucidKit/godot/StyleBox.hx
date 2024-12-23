package lucidKit.godot;

@:native("godot.StyleBox")
extern class StyleBox extends Resource {
    public var contentMarginBottom: Float;
    public var contentMarginLeft: Float;
    public var contentMarginRight: Float;
    public var contentMarginTop: Float;
    public function draw(canvasItem: RID, rect: Rect2): Void;
    public function getCenterSize(): Vector2;
    public function getCurrentItemDrawn(): CanvasItem;
    public function getDefaultMargin(margin: Int): Float;
    public function getMargin(margin: Int): Float;
    public function getMinimumSize(): Vector2;
    public function getOffset(): Vector2;
    public function setDefaultMargin(margin: Int, offset: Float): Void;
    public function testMask(point: GdVector2, rect: Rect2): Bool;
    @:native("__new")
    public function new();
}
