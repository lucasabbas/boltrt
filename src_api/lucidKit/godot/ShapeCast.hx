package lucidKit.godot;

@:native("godot.ShapeCast")
extern class ShapeCast extends Spatial {
    public var collide_with_areas: Bool;
    public var collide_with_bodies: Bool;
    public var collision_mask: Int;
    public var collision_result: Array<Dynamic>;
    public var debug_shape_custom_color: Color;
    public var enabled: Bool;
    public var exclude_parent: Bool;
    public var margin: Float;
    public var max_results: Int;
    public var shape: Shape;
    public var target_position: Vector3;
    public function add_exception(node: Object): Void;
    public function add_exception_rid(rid: RID): Void;
    public function clear_exceptions(): Void;
    public function force_shapecast_update(): Void;
    public function get_closest_collision_safe_fraction(): Float;
    public function get_closest_collision_unsafe_fraction(): Float;
    public function get_collider(index: Int): Object;
    public function get_collider_rid(index: Int): RID;
    public function get_collider_shape(index: Int): Int;
    public function get_collision_count(): Int;
    public function get_collision_mask_value(layer_number: Int): Bool;
    public function get_collision_normal(index: Int): Vector3;
    public function get_collision_point(index: Int): Vector3;
    public function is_colliding(): Bool;
    public function remove_exception(node: Object): Void;
    public function remove_exception_rid(rid: RID): Void;
    public function resource_changed(resource: Resource): Void;
    public function set_collision_mask_value(layer_number: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
