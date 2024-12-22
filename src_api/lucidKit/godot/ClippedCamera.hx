package lucidKit.godot;

@:native("godot.ClippedCamera")
extern class ClippedCamera extends Camera {
    public var clip_to_areas: Bool;
    public var clip_to_bodies: Bool;
    public var collision_mask: Int;
    public var margin: Float;
    public var process_mode: Int;
    public function add_exception(node: Object): Void;
    public function add_exception_rid(rid: RID): Void;
    public function clear_exceptions(): Void;
    public function get_clip_offset(): Float;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function remove_exception(node: Object): Void;
    public function remove_exception_rid(rid: RID): Void;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    @:native("__new")
    public function new();
}
