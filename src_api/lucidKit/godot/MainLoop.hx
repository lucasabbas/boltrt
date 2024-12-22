package lucidKit.godot;

@:native("godot.MainLoop")
extern class MainLoop extends Object {
    public function _drop_files(files: PoolStringArray, from_screen: Int): Void;
    public function _finalize(): Void;
    public function _global_menu_action(id: Variant, meta: Variant): Void;
    public function _idle(delta: Float): Bool;
    public function _initialize(): Void;
    public function _input_event(event: InputEvent): Void;
    public function _input_text(text: String): Void;
    public function _iteration(delta: Float): Bool;
    public function finish(): Void;
    public function idle(delta: Float): Bool;
    public function init(): Void;
    public function input_event(event: InputEvent): Void;
    public function input_text(text: String): Void;
    public function iteration(delta: Float): Bool;
    @:native("__new")
    public function new();
}
