package lucidKit.godot;

@:native("godot.InputMap")
extern class InputMap extends Object {
    public function action_add_event(action: String, event: InputEvent): Void;
    public function action_erase_event(action: String, event: InputEvent): Void;
    public function action_erase_events(action: String): Void;
    public function action_get_deadzone(action: String): Float;
    public function action_has_event(action: String, event: InputEvent): Bool;
    public function action_set_deadzone(action: String, deadzone: Float): Void;
    public function add_action(action: String, deadzone: Float): Void;
    public function erase_action(action: String): Void;
    public function event_is_action(event: InputEvent, action: String, exact_match: Bool): Bool;
    public function get_action_list(action: String): Array<Dynamic>;
    public function get_actions(): Array<Dynamic>;
    public function has_action(action: String): Bool;
    public function load_from_globals(): Void;
    @:native("__new")
    public function new();
}
