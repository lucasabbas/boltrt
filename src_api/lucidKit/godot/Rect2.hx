package lucidKit.godot;

@:native("godot.Rect2")
extern class Rect2 extends lucidKit.core.MonoObject {
    public var end: Vector2;
    public var position: Vector2;
    public var size: Vector2;
    @:native("__new")
    public function new(position: GdVector2, size: GdVector2);
    @:native("__new")
    public static function x_y_width_height(x: Float, y: Float, width: Float, height: Float): Rect2;
    public function abs(): Rect2;
    public function clip(b: Rect2): Rect2;
    public function encloses(b: Rect2): Bool;
    public function expand(to: GdVector2): Rect2;
    public function get_area(): Float;
    public function get_center(): Vector2;
    public function grow(by: Float): Rect2;
    public function grow_individual(left: Float, top: Float, right: Float,  bottom: Float): Rect2;
    public function grow_margin(margin: Int, by: Float): Rect2;
    public function has_no_area(): Bool;
    public function has_point(point: GdVector2): Bool;
    public function intersects(b: Rect2, include_borders: Bool): Bool;
    public function is_equal_approx(rect: Rect2): Bool;
    public function merge(b: Rect2): Rect2;
}
