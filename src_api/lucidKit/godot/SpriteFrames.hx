package lucidKit.godot;

@:native("godot.SpriteFrames")
extern class SpriteFrames extends Resource {
    public var frames: Array<Dynamic>;
    public function add_animation(anim: String): Void;
    public function add_frame(anim: String, frame: Texture, at_position: Int): Void;
    public function clear(anim: String): Void;
    public function clear_all(): Void;
    public function get_animation_loop(anim: String): Bool;
    public function get_animation_names(): PoolStringArray;
    public function get_animation_speed(anim: String): Float;
    public function get_frame(anim: String, idx: Int): Texture;
    public function get_frame_count(anim: String): Int;
    public function has_animation(anim: String): Bool;
    public function remove_animation(anim: String): Void;
    public function remove_frame(anim: String, idx: Int): Void;
    public function rename_animation(anim: String, newname: String): Void;
    public function set_animation_loop(anim: String, loop: Bool): Void;
    public function set_animation_speed(anim: String, speed: Float): Void;
    public function set_frame(anim: String, idx: Int, txt: Texture): Void;
    @:native("__new")
    public function new();
}
