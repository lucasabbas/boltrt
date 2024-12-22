package lucidkit.godot;

@:native("godot.Engine")
extern class Engine extends Object {
    public var editor_hint: Bool;
    public var iterations_per_second: Int;
    public var physics_jitter_fix: Float;
    public var print_error_messages: Bool;
    public var target_fps: Int;
    public var time_scale: Float;
    public function get_author_info(): Map<Dynamic, Dynamic>;
    public function get_copyright_info(): Array<Dynamic>;
    public function get_donor_info(): Map<Dynamic, Dynamic>;
    public function get_frames_drawn(): Int;
    public function get_frames_per_second(): Float;
    public function get_idle_frames(): Int;
    public function get_license_info(): Map<Dynamic, Dynamic>;
    public function get_license_text(): String;
    public function get_main_loop(): MainLoop;
    public function get_physics_frames(): Int;
    public function get_physics_interpolation_fraction(): Float;
    public function get_singleton(name: String): Object;
    public function get_version_info(): Map<Dynamic, Dynamic>;
    public function has_singleton(name: String): Bool;
    public function is_in_physics_frame(): Bool;
}
