package lucidKit.godot;

@:native("godot.Gradient")
extern class Gradient extends Resource {
    public var colors: PoolColorArray;
    public var interpolation_mode: Int;
    public var offsets: PoolRealArray;
    public function add_point(offset: Float, color: Color): Void;
    public function get_color(point: Int): Color;
    public function get_offset(point: Int): Float;
    public function get_point_count(): Int;
    public function interpolate(offset: Float): Color;
    public function remove_point(point: Int): Void;
    public function set_color(point: Int, color: Color): Void;
    public function set_offset(point: Int, offset: Float): Void;
    @:native("__new")
    public function new();
}
