package lucidKit.godot;

@:native("godot.StyleBoxTexture")
extern class StyleBoxTexture extends StyleBox {
    public var axisStretchHorizontal: Int;
    public var axisStretchVertical: Int;
    public var drawCenter: Bool;
    public var expandMarginBottom: Float;
    public var expandMarginLeft: Float;
    public var expandMarginRight: Float;
    public var expandMarginTop: Float;
    public var marginBottom: Float;
    public var marginLeft: Float;
    public var marginRight: Float;
    public var marginTop: Float;
    public var modulateColor: Color;
    public var normalMap: Texture;
    public var regionRect: Rect2;
    public var texture: Texture;
    public function getExpandMarginSize(margin: Int): Float;
    public function getMarginSize(margin: Int): Float;
    public function setExpandMarginAll(size: Float): Void;
    public function setExpandMarginIndividual(sizeLeft: Float, sizeTop: Float, sizeRight: Float, sizeBottom: Float): Void;
    public function setExpandMarginSize(margin: Int, size: Float): Void;
    public function setMarginSize(margin: Int, size: Float): Void;
    @:native("__new")
    public function new();
}
