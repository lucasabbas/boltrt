package lucidkit.godot;

@:native("godot.TileMap")
extern class TileMap extends Node2D {
    public var bake_navigation: Bool;
    public var cell_clip_uv: Bool;
    public var cell_custom_transform: Transform2D;
    public var cell_half_offset: Int;
    public var cell_quadrant_size: Int;
    public var cell_size: Vector2;
    public var cell_tile_origin: Int;
    public var cell_y_sort: Bool;
    public var centered_textures: Bool;
    public var collision_bounce: Float;
    public var collision_friction: Float;
    public var collision_layer: Int;
    public var collision_mask: Int;
    public var collision_use_kinematic: Bool;
    public var collision_use_parent: Bool;
    public var compatibility_mode: Bool;
    public var mode: Int;
    public var navigation_layers: Int;
    public var occluder_light_mask: Int;
    public var show_collision: Bool;
    public var tile_set: TileSet;
    public function clear(): Void;
    public function fix_invalid_tiles(): Void;
    public function get_cell(x: Int, y: Int): Int;
    public function get_cell_autotile_coord(x: Int, y: Int): Vector2;
    public function get_cellv(position: GdVector2): Int;
    public function get_collision_layer_bit(bit: Int): Bool;
    public function get_collision_mask_bit(bit: Int): Bool;
    public function get_used_cells(): Array<Dynamic>;
    public function get_used_cells_by_id(id: Int): Array<Dynamic>;
    public function get_used_rect(): Rect2;
    public function is_cell_transposed(x: Int, y: Int): Bool;
    public function is_cell_x_flipped(x: Int, y: Int): Bool;
    public function is_cell_y_flipped(x: Int, y: Int): Bool;
    public function map_to_world(map_position: GdVector2, ignore_half_ofs: Bool): Vector2;
    public function set_cell(x: Int, y: Int, tile: Int, flip_x: Bool, flip_y: Bool, transpose: Bool, autotile_coord: GdVector2): Void;
    public function set_cellv(position: GdVector2, tile: Int, flip_x: Bool, flip_y: Bool, transpose: Bool, autotile_coord: GdVector2): Void;
    public function set_collision_layer_bit(bit: Int, value: Bool): Void;
    public function set_collision_mask_bit(bit: Int, value: Bool): Void;
    public function update_bitmask_area(position: GdVector2): Void;
    public function update_bitmask_region(start: GdVector2, end: GdVector2): Void;
    public function update_dirty_quadrants(): Void;
    public function world_to_map(world_position: GdVector2): Vector2;
}
