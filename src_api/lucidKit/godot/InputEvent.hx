package lucidKit.godot;

@:native("godot.InputEvent")
extern class InputEvent extends Resource {
    public var device: Int;
    public function accumulate(with_event: InputEvent): Bool;
    public function as_text(): String;
    public function get_action_strength(action: String, exact_match: Bool): Float;
    public function is_action(action: String, exact_match: Bool): Bool;
    public function is_action_pressed(action: String, allow_echo: Bool, exact_match: Bool): Bool;
    public function is_action_released(action: String, exact_match: Bool): Bool;
    public function is_action_type(): Bool;
    public function is_canceled(): Bool;
    public function is_echo(): Bool;
    public function is_pressed(): Bool;
    public function is_released(): Bool;
    public function shortcut_match(event: InputEvent, exact_match: Bool): Bool;
    public function xformed_by(xform: Transform2D, local_ofs: GdVector2): InputEvent;
    @:native("__new")
    public function new();
}
