package lucidKit.godot;

@:native("godot.UndoRedo")
extern class UndoRedo extends Object {
    public function add_do_method(object: Object, method: String): Void;
    public function add_do_property(object: Object, property: String, value: Variant): Void;
    public function add_do_reference(object: Object): Void;
    public function add_undo_method(object: Object, method: String): Void;
    public function add_undo_property(object: Object, property: String, value: Variant): Void;
    public function add_undo_reference(object: Object): Void;
    public function clear_history(increase_version: Bool): Void;
    public function commit_action(): Void;
    public function create_action(name: String, merge_mode: Int): Void;
    public function get_current_action_name(): String;
    public function get_version(): Int;
    public function has_redo(): Bool;
    public function has_undo(): Bool;
    public function is_commiting_action(): Bool;
    public function redo(): Bool;
    public function undo(): Bool;
    @:native("__new")
    public function new();
}
