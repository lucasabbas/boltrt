package lucidKit.godot;

@:native("godot.Skin")
extern class Skin extends Resource {
    public function add_bind(bone: Int, pose: Transform): Void;
    public function clear_binds(): Void;
    public function get_bind_bone(bind_index: Int): Int;
    public function get_bind_count(): Int;
    public function get_bind_name(bind_index: Int): String;
    public function get_bind_pose(bind_index: Int): Transform;
    public function set_bind_bone(bind_index: Int, bone: Int): Void;
    public function set_bind_count(bind_count: Int): Void;
    public function set_bind_name(bind_index: Int, name: String): Void;
    public function set_bind_pose(bind_index: Int, pose: Transform): Void;
    @:native("__new")
    public function new();
}
