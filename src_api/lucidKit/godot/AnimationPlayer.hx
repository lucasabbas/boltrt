package lucidKit.godot;

@:native("godot.AnimationPlayer")
extern class AnimationPlayer extends Node {
    public var assigned_animation: String;
    public var autoplay: String;
    public var current_animation: String;
    public var current_animation_length: Float;
    public var current_animation_position: Float;
    public var method_call_mode: Int;
    public var playback_active: Bool;
    public var playback_default_blend_time: Float;
    public var playback_process_mode: Int;
    public var playback_speed: Float;
    public var reset_on_save: Bool;
    public var root_node: NodePath;
    public function add_animation(name: String, animation: Animation): Int;
    public function advance(delta: Float): Void;
    public function animation_get_next(anim_from: String): String;
    public function animation_set_next(anim_from: String, anim_to: String): Void;
    public function clear_caches(): Void;
    public function clear_queue(): Void;
    public function find_animation(animation: Animation): String;
    public function get_animation(name: String): Animation;
    public function get_animation_list(): PoolStringArray;
    public function get_blend_time(anim_from: String, anim_to: String): Float;
    public function get_playing_speed(): Float;
    public function get_queue(): PoolStringArray;
    public function has_animation(name: String): Bool;
    public function is_playing(): Bool;
    public function play(name: String, custom_blend: Float, custom_speed: Float, from_end: Bool): Void;
    public function play_backwards(name: String, custom_blend: Float): Void;
    public function queue(name: String): Void;
    public function remove_animation(name: String): Void;
    public function rename_animation(name: String, newname: String): Void;
    public function seek(seconds: Float, update: Bool): Void;
    public function set_blend_time(anim_from: String, anim_to: String, sec: Float): Void;
    public function stop(reset: Bool): Void;
    @:native("__new")
    public function new();
}
