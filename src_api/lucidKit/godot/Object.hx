package lucidKit.godot;

@:native("godot.Object")
extern class Object extends lucidKit.core.MonoObject {
    public function _get(property: String): Variant;
    public function _get_property_list(): Array<Dynamic>;
    public function _init(): Void;
    public function _notification(what: Int): Void;
    public function _set(property: String, value: Variant): Bool;
    public function _to_string(): String;
    public function add_user_signal(signal: String, arguments: Array<Dynamic>): Void;
    public function call(method: String): Variant;
    public function call_deferred(method: String): Void;
    public function callv(method: String, arg_array: Array<Dynamic>): Variant;
    public function can_translate_messages(): Bool;
    public function connect(signal: String, target: Object, method: String, binds: Array<Dynamic>, flags: Int): Int;
    public function disconnect(signal: String, target: Object, method: String): Void;
    public function emit_signal(signal: String): Void;
    public function free(): Void;
    public function get(property: String): Variant;
    public function get_class(): String;
    public function get_incoming_connections(): Array<Dynamic>;
    public function get_indexed(property_path: NodePath): Variant;
    public function get_instance_id(): Int;
    public function get_meta(name: String, _default: Variant): Variant;
    public function get_meta_list(): PoolStringArray;
    public function get_method_list(): Array<Dynamic>;
    public function get_property_list(): Array<Dynamic>;
    public function get_script(): Reference;
    public function get_signal_connection_list(signal: String): Array<Dynamic>;
    public function get_signal_list(): Array<Dynamic>;
    public function has_meta(name: String): Bool;
    public function has_method(method: String): Bool;
    public function has_signal(signal: String): Bool;
    public function has_user_signal(signal: String): Bool;
    public function is_blocking_signals(): Bool;
    public function is_class(_class: String): Bool;
    public function is_connected(signal: String, target: Object, method: String): Bool;
    public function is_queued_for_deletion(): Bool;
    public function notification(what: Int, reversed: Bool): Void;
    public function property_list_changed_notify(): Void;
    public function remove_meta(name: String): Void;
    public function set(property: String, value: Variant): Void;
    public function set_block_signals(enable: Bool): Void;
    public function set_deferred(property: String, value: Variant): Void;
    public function set_indexed(property_path: NodePath, value: Variant): Void;
    public function set_message_translation(enable: Bool): Void;
    public function set_meta(name: String, value: Variant): Void;
    public function set_script(script: Reference): Void;
    public function toString(): String;
    public function tr(message: String): String;
    @:native("__new")
    public function new();
}
