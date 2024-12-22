package lucidKit.godot;

@:native("godot.XMLParser")
extern class XMLParser extends Reference {
    public function get_attribute_count(): Int;
    public function get_attribute_name(idx: Int): String;
    public function get_attribute_value(idx: Int): String;
    public function get_current_line(): Int;
    public function get_named_attribute_value(name: String): String;
    public function get_named_attribute_value_safe(name: String): String;
    public function get_node_data(): String;
    public function get_node_name(): String;
    public function get_node_offset(): Int;
    public function get_node_type(): Int;
    public function has_attribute(name: String): Bool;
    public function is_empty(): Bool;
    public function open(file: String): Int;
    public function open_buffer(buffer: PoolByteArray): Int;
    public function read(): Int;
    public function seek(position: Int): Int;
    public function skip_section(): Void;
    @:native("__new")
    public function new();
}
