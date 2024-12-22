package lucidkit.godot;

@:native("godot.Skeleton")
extern class Skeleton extends Spatial {
    public function add_bone(name: String): Void;
    public function bind_child_node_to_bone(bone_idx: Int, node: Node): Void;
    public function clear_bones(): Void;
    public function clear_bones_global_pose_override(): Void;
    public function find_bone(name: String): Int;
    public function get_bone_count(): Int;
    public function get_bone_custom_pose(bone_idx: Int): Transform;
    public function get_bone_global_pose(bone_idx: Int): Transform;
    public function get_bone_global_pose_no_override(bone_idx: Int): Transform;
    public function get_bone_name(bone_idx: Int): String;
    public function get_bone_parent(bone_idx: Int): Int;
    public function get_bone_pose(bone_idx: Int): Transform;
    public function get_bone_rest(bone_idx: Int): Transform;
    public function get_bound_child_nodes_to_bone(bone_idx: Int): Array<Dynamic>;
    public function is_bone_rest_disabled(bone_idx: Int): Bool;
    public function localize_rests(): Void;
    public function physical_bones_add_collision_exception(exception: RID): Void;
    public function physical_bones_remove_collision_exception(exception: RID): Void;
    public function physical_bones_start_simulation(bones: Array<Dynamic>): Void;
    public function physical_bones_stop_simulation(): Void;
    public function register_skin(skin: Skin): SkinReference;
    public function set_bone_custom_pose(bone_idx: Int, custom_pose: Transform): Void;
    public function set_bone_disable_rest(bone_idx: Int, disable: Bool): Void;
    public function set_bone_global_pose_override(bone_idx: Int, pose: Transform, amount: Float, persistent: Bool): Void;
    public function set_bone_name(bone_idx: Int, name: String): Void;
    public function set_bone_parent(bone_idx: Int, parent_idx: Int): Void;
    public function set_bone_pose(bone_idx: Int, pose: Transform): Void;
    public function set_bone_rest(bone_idx: Int, rest: Transform): Void;
    public function unbind_child_node_from_bone(bone_idx: Int, node: Node): Void;
    public function unparent_bone_and_rest(bone_idx: Int): Void;
}
