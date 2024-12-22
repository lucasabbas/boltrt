package lucidKit.godot;

@:native("godot.TextureProgress")
extern class TextureProgress extends Range {
    public var fillMode: Int;
    public var ninePatchStretch: Bool;
    public var radialCenterOffset: Vector2;
    public var radialFillDegrees: Float;
    public var radialInitialAngle: Float;
    public var stretchMarginBottom: Int;
    public var stretchMarginLeft: Int;
    public var stretchMarginRight: Int;
    public var stretchMarginTop: Int;
    public var textureOver: Texture;
    public var textureProgress: Texture;
    public var textureProgressOffset: Vector2;
    public var textureUnder: Texture;
    public var tintOver: Color;
    public var tintProgress: Color;
    public var tintUnder: Color;
    public function getStretchMargin(margin: Int): Int;
    public function setStretchMargin(margin: Int, value: Int): Void;
    @:native("__new")
    public function new();
}
