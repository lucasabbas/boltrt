package lucidKit.godot;

@:native("godot.File")
extern class File extends Reference {
    public var endian_swap: Bool;
    public function close(): Void;
    public function eof_reached(): Bool;
    public function file_exists(path: String): Bool;
    public function flush(): Void;
    public function get_16(): Int;
    public function get_32(): Int;
    public function get_64(): Int;
    public function get_8(): Int;
    public function get_as_text(skip_cr: Bool): String;
    public function get_buffer(len: Int): PoolByteArray;
    public function get_csv_line(delim: String): PoolStringArray;
    public function get_double(): Float;
    public function get_error(): Int;
    public function get_float(): Float;
    public function get_len(): Int;
    public function get_line(): String;
    public function get_md5(path: String): String;
    public function get_modified_time(file: String): Int;
    public function get_pascal_string(): String;
    public function get_path(): String;
    public function get_path_absolute(): String;
    public function get_position(): Int;
    public function get_real(): Float;
    public function get_sha256(path: String): String;
    public function get_var(allow_objects: Bool): Variant;
    public function is_open(): Bool;
    public function open(path: String, flags: Int): Int;
    public function open_compressed(path: String, mode_flags: Int, compression_mode: Int): Int;
    public function open_encrypted(path: String, mode_flags: Int, key: PoolByteArray): Int;
    public function open_encrypted_with_pass(path: String, mode_flags: Int, pass: String): Int;
    public function seek(position: Int): Void;
    public function seek_end(position: Int): Void;
    public function store_16(value: Int): Void;
    public function store_32(value: Int): Void;
    public function store_64(value: Int): Void;
    public function store_8(value: Int): Void;
    public function store_buffer(buffer: PoolByteArray): Void;
    public function store_csv_line(values: PoolStringArray, delim: String): Void;
    public function store_double(value: Float): Void;
    public function store_float(value: Float): Void;
    public function store_line(line: String): Void;
    public function store_pascal_string(string: String): Void;
    public function store_real(value: Float): Void;
    public function store_string(string: String): Void;
    public function store_var(value: Variant, full_objects: Bool): Void;
    @:native("__new")
    public function new();
}
