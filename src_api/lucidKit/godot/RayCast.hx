package lucidKit.godot;

@:native("godot.RayCast")
extern class RayCast extends Spatial {
    public var cast_to: Vector3;
    public var collide_with_areas: Bool;
    public var collide_with_bodies: Bool;
    public var collision_mask: Int;
    public var debug_shape_custom_color: Color;
    public var debug_shape_thickness: Int;
    public var enabled: Bool;
    public var exclude_parent: Bool;
    public function add_exception(node: Object): Void;
    public function add_exception_rid(rid: RID): Void;
    public function clear_exceptions(): Void;
    public function force_raycast_update(): Void;
    public function get_collider(): Object;
    public function get_collider_shape(): Int;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function get_collision_normal(): Vector3;
    public function get_collision_point(): Vector3;
    public function is_colliding(): Bool;
    public function remove_exception(node: Object): Void;
    public function remove_exception_rid(rid: RID): Void;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
