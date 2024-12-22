package lucidKit.godot;

@:native("godot.Expression")
extern class Expression extends Reference {
    public function execute(inputs: Array<Dynamic>, base_instance: Object, show_error: Bool): Variant;
    public function get_error_text(): String;
    public function has_execute_failed(): Bool;
    public function parse(expression: String, input_names: PoolStringArray): Int;
    @:native("__new")
    public function new();
}
