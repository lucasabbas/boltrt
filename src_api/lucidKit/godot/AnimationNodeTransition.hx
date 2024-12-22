package lucidkit.godot;

@:native("godot.AnimationNodeTransition")
extern class AnimationNodeTransition extends AnimationNode {
    public var input_count: Int;
    public var xfade_time: Float;
    public function get_input_caption(input: Int): String;
    public function is_input_set_as_auto_advance(input: Int): Bool;
    public function set_input_as_auto_advance(input: Int, enable: Bool): Void;
    public function set_input_caption(input: Int, caption: String): Void;
}
