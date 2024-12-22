package lucidKit.godot;

@:native("godot.Tween")
extern class Tween extends Node {
    public var playback_process_mode: Int;
    public var playback_speed: Float;
    public var repeat: Bool;
    public function follow_method(object: Object, method: String, initial_val: Variant, target: Object, target_method: String, duration: Float, trans_type: Int, ease_type: Int, delay: Float): Bool;
    public function follow_property(object: Object, property: NodePath, initial_val: Variant, target: Object, target_property: NodePath, duration: Float, trans_type: Int, ease_type: Int, delay: Float): Bool;
    public function get_runtime(): Float;
    public function interpolate_callback(object: Object, duration: Float, callback: String, arg1: Variant, arg2: Variant, arg3: Variant, arg4: Variant, arg5: Variant, arg6: Variant, arg7: Variant, arg8: Variant): Bool;
    public function interpolate_deferred_callback(object: Object, duration: Float, callback: String, arg1: Variant, arg2: Variant, arg3: Variant, arg4: Variant, arg5: Variant, arg6: Variant, arg7: Variant, arg8: Variant): Bool;
    public function interpolate_method(object: Object, method: String, initial_val: Variant, final_val: Variant, duration: Float, trans_type: Int, ease_type: Int, delay: Float): Bool;
    public function interpolate_property(object: Object, property: NodePath, initial_val: Variant, final_val: Variant, duration: Float, trans_type: Int, ease_type: Int, delay: Float): Bool;
    public function is_active(): Bool;
    public function remove(object: Object, key: String): Bool;
    public function remove_all(): Bool;
    public function reset(object: Object, key: String): Bool;
    public function reset_all(): Bool;
    public function resume(object: Object, key: String): Bool;
    public function resume_all(): Bool;
    public function seek(time: Float): Bool;
    public function set_active(active: Bool): Void;
    public function start(): Bool;
    public function stop(object: Object, key: String): Bool;
    public function stop_all(): Bool;
    public function targeting_method(object: Object, method: String, initial: Object, initial_method: String, final_val: Variant, duration: Float, trans_type: Int, ease_type: Int, delay: Float): Bool;
    public function targeting_property(object: Object, property: NodePath, initial: Object, initial_val: NodePath, final_val: Variant, duration: Float, trans_type: Int, ease_type: Int, delay: Float): Bool;
    public function tell(): Float;
    @:native("__new")
    public function new();
}
