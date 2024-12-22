package lucidkit.godot;

@:native("godot.Translation")
extern class Translation extends Resource {
    public var locale: String;
    public function _get_message(src_message: String): String;
    public function add_message(src_message: String, xlated_message: String): Void;
    public function erase_message(src_message: String): Void;
    public function get_message(src_message: String): String;
    public function get_message_count(): Int;
    public function get_message_list(): PoolStringArray;
}
