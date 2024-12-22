package lucidkit.godot;

@:native("godot.Script")
extern class Script extends Resource {
    public var source_code: String;
    public function can_instance(): Bool;
    public function get_base_script(): Script;
    public function get_instance_base_type(): String;
    public function get_property_default_value(property: String): Variant;
    public function get_script_constant_map(): Map<Dynamic, Dynamic>;
    public function get_script_method_list(): Array<Dynamic>;
    public function get_script_property_list(): Array<Dynamic>;
    public function get_script_signal_list(): Array<Dynamic>;
    public function has_script_signal(signal_name: String): Bool;
    public function has_source_code(): Bool;
    public function instance_has(base_object: Object): Bool;
    public function is_tool(): Bool;
    public function reload(keep_state: Bool): Int;
}
