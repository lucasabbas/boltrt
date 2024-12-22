package lucidkit.godot;

@:native("godot.ConfigFile")
extern class ConfigFile extends Reference {
    public function clear(): Void;
    public function erase_section(section: String): Void;
    public function erase_section_key(section: String, key: String): Void;
    public function get_section_keys(section: String): PoolStringArray;
    public function get_sections(): PoolStringArray;
    public function get_value(section: String, key: String, default: Variant): Variant;
    public function has_section(section: String): Bool;
    public function has_section_key(section: String, key: String): Bool;
    public function load(path: String): Int;
    public function load_encrypted(path: String, key: PoolByteArray): Int;
    public function load_encrypted_pass(path: String, password: String): Int;
    public function parse(data: String): Int;
    public function save(path: String): Int;
    public function save_encrypted(path: String, key: PoolByteArray): Int;
    public function save_encrypted_pass(path: String, password: String): Int;
    public function set_value(section: String, key: String, value: Variant): Void;
}
