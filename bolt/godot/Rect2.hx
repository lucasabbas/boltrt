package bolt.godot;

class Rect2SignalNames {
}
@:native("godot.Rect2")
extern class Rect2 extends bolt.core.MonoObject {
    public var end: Vector2;
    public var position: Vector2;
    public var size: Vector2;
    @:native("__new")
    public function new(position: GdVector2, size: GdVector2);
    @:native("__new")
    public static function xYWidthHeight(x: Float, y: Float, width: Float, height: Float): Rect2;
    public function abs(): Rect2;
    public function clip(b: Rect2): Rect2;
    public function encloses(b: Rect2): Bool;
    public function expand(to: GdVector2): Rect2;
    public function getArea(): Float;
    public function getCenter(): Vector2;
    public function grow(by: Float): Rect2;
    public function growIndividual(left: Float, top: Float, right: Float,  bottom: Float): Rect2;
    public function growMargin(margin: Int, by: Float): Rect2;
    public function hasNoArea(): Bool;
    public function hasPoint(point: GdVector2): Bool;
    public function intersects(b: Rect2, includeBorders: Bool = false): Bool;
    public function isEqualApprox(rect: Rect2): Bool;
    public function merge(b: Rect2): Rect2;
}
