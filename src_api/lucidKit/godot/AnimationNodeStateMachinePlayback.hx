package lucidkit.godot;

@:native("godot.AnimationNodeStateMachinePlayback")
extern class AnimationNodeStateMachinePlayback extends Resource {
    public var resource_local_to_scene: Bool;
    public function get_current_length(): Float;
    public function get_current_node(): String;
    public function get_current_play_position(): Float;
    public function get_travel_path(): PoolStringArray;
    public function is_playing(): Bool;
    public function start(node: String): Void;
    public function stop(): Void;
    public function travel(to_node: String): Void;
}
