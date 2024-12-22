package lucidKit.godot;

@:native("godot.Line2D")
extern class Line2D extends Node2D {
    public var antialiased: Bool;
    public var begin_cap_mode: Int;
    public var default_color: Color;
    public var end_cap_mode: Int;
    public var gradient: Gradient;
    public var joint_mode: Int;
    public var points: PoolVector2Array;
    public var round_precision: Int;
    public var sharp_limit: Float;
    public var texture: Texture;
    public var texture_mode: Int;
    public var width: Float;
    public var width_curve: Curve;
    public function add_point(position: GdVector2, index: Int): Void;
    public function clear_points(): Void;
    public function get_point_count(): Int;
    public function get_point_position(index: Int): Vector2;
    public function remove_point(index: Int): Void;
    public function set_point_position(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
