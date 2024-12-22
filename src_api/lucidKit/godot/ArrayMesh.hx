package lucidKit.godot;

@:native("godot.ArrayMesh")
extern class ArrayMesh extends Mesh {
    public var blend_shape_mode: Int;
    public var custom_aabb: AABB;
    public function add_blend_shape(name: String): Void;
    public function add_surface_from_arrays(primitive: Int, arrays: Array<Dynamic>, blend_shapes: Array<Dynamic>, compress_flags: Int): Void;
    public function clear_blend_shapes(): Void;
    public function clear_surfaces(): Void;
    public function get_blend_shape_count(): Int;
    public function get_blend_shape_name(index: Int): String;
    public function lightmap_unwrap(transform: Transform, texel_size: Float): Int;
    public function regen_normalmaps(): Void;
    public function set_blend_shape_name(index: Int, name: String): Void;
    public function surface_find_by_name(name: String): Int;
    public function surface_get_array_index_len(surf_idx: Int): Int;
    public function surface_get_array_len(surf_idx: Int): Int;
    public function surface_get_format(surf_idx: Int): Int;
    public function surface_get_name(surf_idx: Int): String;
    public function surface_get_primitive_type(surf_idx: Int): Int;
    public function surface_remove(surf_idx: Int): Void;
    public function surface_set_name(surf_idx: Int, name: String): Void;
    public function surface_update_region(surf_idx: Int, offset: Int, data: PoolByteArray): Void;
    @:native("__new")
    public function new();
}
