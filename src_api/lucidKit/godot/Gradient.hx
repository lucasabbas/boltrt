package lucidKit.godot;

@:native("godot.Gradient")
extern class Gradient extends Resource {
    public var colors: PoolColorArray;
    public var interpolationMode: Int;
    public var offsets: PoolRealArray;
    public function addPoint(offset: Float, color: Color): Void;
    public function getColor(point: Int): Color;
    public function getOffset(point: Int): Float;
    public function getPointCount(): Int;
    public function interpolate(offset: Float): Color;
    public function removePoint(point: Int): Void;
    public function setColor(point: Int, color: Color): Void;
    public function setOffset(point: Int, offset: Float): Void;
    @:native("__new")
    public function new();
}
