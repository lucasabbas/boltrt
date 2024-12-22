package lucidKit.godot;

@:native("godot.RayCast2D")
extern class RayCast2D extends Node2D {
    public var cast_to: Vector2;
    public var collide_with_areas: Bool;
    public var collide_with_bodies: Bool;
    public var collision_mask: Int;
    public var enabled: Bool;
    public var exclude_parent: Bool;
    public function add_exception(node: Object): Void;
    public function add_exception_rid(rid: RID): Void;
    public function clear_exceptions(): Void;
    public function force_raycast_update(): Void;
    public function get_collider(): Object;
    public function get_collider_shape(): Int;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function get_collision_normal(): Vector2;
    public function get_collision_point(): Vector2;
    public function is_colliding(): Bool;
    public function remove_exception(node: Object): Void;
    public function remove_exception_rid(rid: RID): Void;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
