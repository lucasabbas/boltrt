package bolt.godot;

class StyleBoxFlatSignalNames {
}
@:native("godot.StyleBoxFlat")
extern class StyleBoxFlat extends StyleBox {
    public var antiAliasing: Bool;
    public var antiAliasingSize: Float;
    public var bgColor: Color;
    public var borderBlend: Bool;
    public var borderColor: Color;
    public var borderWidthBottom: Int;
    public var borderWidthLeft: Int;
    public var borderWidthRight: Int;
    public var borderWidthTop: Int;
    public var cornerDetail: Int;
    public var cornerRadiusBottomLeft: Int;
    public var cornerRadiusBottomRight: Int;
    public var cornerRadiusTopLeft: Int;
    public var cornerRadiusTopRight: Int;
    public var drawCenter: Bool;
    public var expandMarginBottom: Float;
    public var expandMarginLeft: Float;
    public var expandMarginRight: Float;
    public var expandMarginTop: Float;
    public var shadowColor: Color;
    public var shadowOffset: Vector2;
    public var shadowSize: Int;
    public var skew: Vector2;
    public function getBorderWidth(margin: Int): Int;
    public function getBorderWidthMin(): Int;
    public function getCornerRadius(corner: Int): Int;
    public function getExpandMargin(margin: Int): Float;
    public function setBorderWidth(margin: Int, width: Int): Void;
    public function setBorderWidthAll(width: Int): Void;
    public function setCornerRadius(corner: Int, radius: Int): Void;
    public function setCornerRadiusAll(radius: Int): Void;
    public function setCornerRadiusIndividual(radiusTopLeft: Int, radiusTopRight: Int, radiusBottomRight: Int, radiusBottomLeft: Int): Void;
    public function setExpandMargin(margin: Int, size: Float): Void;
    public function setExpandMarginAll(size: Float): Void;
    public function setExpandMarginIndividual(sizeLeft: Float, sizeTop: Float, sizeRight: Float, sizeBottom: Float): Void;
    @:native("__new")
    public function new();
}
