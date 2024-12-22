package lucidkit.godot;

@:native("godot.SceneTreeTween")
extern class SceneTreeTween extends Reference {
    public function bind_node(node: Node): SceneTreeTween;
    public function chain(): SceneTreeTween;
    public function custom_step(delta: Float): Bool;
    public function get_total_elapsed_time(): Float;
    public function interpolate_value(initial_value: Variant, delta_value: Variant, elapsed_time: Float, duration: Float, trans_type: Int, ease_type: Int): Variant;
    public function is_running(): Bool;
    public function is_valid(): Bool;
    public function kill(): Void;
    public function parallel(): SceneTreeTween;
    public function pause(): Void;
    public function play(): Void;
    public function set_ease(ease: Int): SceneTreeTween;
    public function set_loops(loops: Int): SceneTreeTween;
    public function set_parallel(parallel: Bool): SceneTreeTween;
    public function set_pause_mode(mode: Int): SceneTreeTween;
    public function set_process_mode(mode: Int): SceneTreeTween;
    public function set_speed_scale(speed: Float): SceneTreeTween;
    public function set_trans(trans: Int): SceneTreeTween;
    public function stop(): Void;
    public function tween_callback(object: Object, method: String, binds: Array<Dynamic>): CallbackTweener;
    public function tween_interval(time: Float): IntervalTweener;
    public function tween_method(object: Object, method: String, from: Variant, to: Variant, duration: Float, binds: Array<Dynamic>): MethodTweener;
    public function tween_property(object: Object, property: NodePath, final_val: Variant, duration: Float): PropertyTweener;
}
