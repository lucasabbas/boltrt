package lucidkit.godot;

@:native("godot.PoolByteArray")
extern class PoolByteArray extends lucidkit.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(byte: Int): Dynamic;
    public function append_array(array: PoolByteArray): Dynamic;
    public function clear(): Dynamic;
    public function compress(compression_mode: Int): PoolByteArray;
    public function count(value: Int): Int;
    public function decompress(buffer_size: Int, compression_mode: Int): PoolByteArray;
    public function decompress_dynamic(max_output_size: Int, compression_mode: Int): PoolByteArray;
    public function empty(): Bool;
    public function fill(byte: Int): Dynamic;
    public function find(value: Int, from: Int): Int;
    public function get_string_from_ascii(): String;
    public function get_string_from_utf8(): String;
    public function has(value: Int): Bool;
    public function hex_encode(): String;
    public function insert(idx: Int, byte: Int): Int;
    public function invert(): Dynamic;
    public function push_back(byte: Int): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: Int, from: Int): Int;
    public function set(idx: Int, byte: Int): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
    public function subarray(from: Int, to: Int): PoolByteArray;
}
