package lucidkit.godot;

@:native("godot.VisualInstance")
extern class VisualInstance extends CullInstance {
    public var layers: Int;
    public var sorting_offset: Float;
    public var sorting_use_aabb_center: Bool;
    public function get_aabb(): AABB;
    public function get_base(): RID;
    public function get_instance(): RID;
    public function get_layer_mask_bit(layer: Int): Bool;
    public function get_transformed_aabb(): AABB;
    public function set_base(base: RID): Void;
    public function set_layer_mask_bit(layer: Int, enabled: Bool): Void;
}
