package lucidKit.godot;

@:native("godot.Line2D")
extern class Line2D extends Node2D {
    public var antialiased: Bool;
    public var beginCapMode: Int;
    public var defaultColor: Color;
    public var endCapMode: Int;
    public var gradient: Gradient;
    public var jointMode: Int;
    public var points: PoolVector2Array;
    public var roundPrecision: Int;
    public var sharpLimit: Float;
    public var texture: Texture;
    public var textureMode: Int;
    public var width: Float;
    public var widthCurve: Curve;
    public function addPoint(position: GdVector2, index: Int = -1): Void;
    public function clearPoints(): Void;
    public function getPointCount(): Int;
    public function getPointPosition(index: Int): Vector2;
    public function removePoint(index: Int): Void;
    public function setPointPosition(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
