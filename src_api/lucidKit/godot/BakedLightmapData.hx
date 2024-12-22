package lucidkit.godot;

@:native("godot.BakedLightmapData")
extern class BakedLightmapData extends Resource {
    public var bounds: AABB;
    public var cell_space_transform: Transform;
    public var cell_subdiv: Int;
    public var energy: Float;
    public var interior: Bool;
    public var octree: PoolByteArray;
    public function add_user(path: NodePath, lightmap: Resource, lightmap_slice: Int, lightmap_uv_rect: Rect2, instance: Int): Void;
    public function clear_data(): Void;
    public function clear_users(): Void;
    public function get_user_count(): Int;
    public function get_user_lightmap(user_idx: Int): Resource;
    public function get_user_path(user_idx: Int): NodePath;
}
