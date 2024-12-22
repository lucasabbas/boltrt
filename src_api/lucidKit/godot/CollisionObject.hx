package lucidKit.godot;

@:native("godot.CollisionObject")
extern class CollisionObject extends Spatial {
    public var collision_layer: Int;
    public var collision_mask: Int;
    public var input_capture_on_drag: Bool;
    public var input_ray_pickable: Bool;
    public function _input_event(camera: Object, event: InputEvent, position: GdVector3, normal: GdVector3, shape_idx: Int): Void;
    public function create_shape_owner(owner: Object): Int;
    public function get_collision_layer_bit(bit: Int): Bool;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function get_rid(): RID;
    public function get_shape_owners(): Array<Dynamic>;
    public function is_shape_owner_disabled(owner_id: Int): Bool;
    public function remove_shape_owner(owner_id: Int): Void;
    public function set_collision_layer_bit(bit: Int, value: Bool): Void;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    public function shape_find_owner(shape_index: Int): Int;
    public function shape_owner_add_shape(owner_id: Int, shape: Shape): Void;
    public function shape_owner_clear_shapes(owner_id: Int): Void;
    public function shape_owner_get_owner(owner_id: Int): Object;
    public function shape_owner_get_shape(owner_id: Int, shape_id: Int): Shape;
    public function shape_owner_get_shape_count(owner_id: Int): Int;
    public function shape_owner_get_shape_index(owner_id: Int, shape_id: Int): Int;
    public function shape_owner_get_transform(owner_id: Int): Transform;
    public function shape_owner_remove_shape(owner_id: Int, shape_id: Int): Void;
    public function shape_owner_set_disabled(owner_id: Int, disabled: Bool): Void;
    public function shape_owner_set_transform(owner_id: Int, transform: Transform): Void;
    @:native("__new")
    public function new();
}
