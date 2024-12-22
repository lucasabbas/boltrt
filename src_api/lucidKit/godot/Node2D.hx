package lucidkit.godot;

@:native("godot.Node2D")
extern class Node2D extends CanvasItem {
    public var global_position: Vector2;
    public var global_rotation: Float;
    public var global_rotation_degrees: Float;
    public var global_scale: Vector2;
    public var global_transform: Transform2D;
    public var position: Vector2;
    public var rotation: Float;
    public var rotation_degrees: Float;
    public var scale: Vector2;
    public var transform: Transform2D;
    public var z_as_relative: Bool;
    public var z_index: Int;
    public function apply_scale(ratio: GdVector2): Void;
    public function get_angle_to(point: GdVector2): Float;
    public function get_relative_transform_to_parent(parent: Node): Transform2D;
    public function global_translate(offset: GdVector2): Void;
    public function look_at(point: GdVector2): Void;
    public function move_local_x(delta: Float, scaled: Bool): Void;
    public function move_local_y(delta: Float, scaled: Bool): Void;
    public function rotate(radians: Float): Void;
    public function to_global(local_point: GdVector2): Vector2;
    public function to_local(global_point: GdVector2): Vector2;
    public function translate(offset: GdVector2): Void;
}
