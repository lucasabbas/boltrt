package lucidkit.godot;

@:native("godot.StreamPeer")
extern class StreamPeer extends Reference {
    public var big_endian: Bool;
    public function get_16(): Int;
    public function get_32(): Int;
    public function get_64(): Int;
    public function get_8(): Int;
    public function get_available_bytes(): Int;
    public function get_data(bytes: Int): Array<Dynamic>;
    public function get_double(): Float;
    public function get_float(): Float;
    public function get_partial_data(bytes: Int): Array<Dynamic>;
    public function get_string(bytes: Int): String;
    public function get_u16(): Int;
    public function get_u32(): Int;
    public function get_u64(): Int;
    public function get_u8(): Int;
    public function get_utf8_string(bytes: Int): String;
    public function get_var(allow_objects: Bool): Variant;
    public function put_16(value: Int): Void;
    public function put_32(value: Int): Void;
    public function put_64(value: Int): Void;
    public function put_8(value: Int): Void;
    public function put_data(data: PoolByteArray): Int;
    public function put_double(value: Float): Void;
    public function put_float(value: Float): Void;
    public function put_partial_data(data: PoolByteArray): Array<Dynamic>;
    public function put_string(value: String): Void;
    public function put_u16(value: Int): Void;
    public function put_u32(value: Int): Void;
    public function put_u64(value: Int): Void;
    public function put_u8(value: Int): Void;
    public function put_utf8_string(value: String): Void;
    public function put_var(value: Variant, full_objects: Bool): Void;
}
