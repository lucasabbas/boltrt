package bolt.godot;

class PoolByteArraySignalNames {
}
@:native("godot.PoolByteArray")
extern class PoolByteArray extends bolt.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(byte: Int): Dynamic;
    public function appendArray(array: Dynamic): Dynamic;
    public function clear(): Dynamic;
    public function compress(compressionMode: Int = 0): Dynamic;
    public function count(value: Int): Int;
    public function decompress(bufferSize: Int, compressionMode: Int = 0): Dynamic;
    public function decompressDynamic(maxOutputSize: Int, compressionMode: Int = 0): Dynamic;
    public function empty(): Bool;
    public function fill(byte: Int): Dynamic;
    public function find(value: Int, from: Int = 0): Int;
    public function getStringFromAscii(): String;
    public function getStringFromUtf8(): String;
    public function has(value: Int): Bool;
    public function hexEncode(): String;
    public function insert(idx: Int, byte: Int): Int;
    public function invert(): Dynamic;
    public function pushBack(byte: Int): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: Int, from: Int = -1): Int;
    public function set(idx: Int, byte: Int): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
    public function subarray(from: Int, to: Int): Dynamic;
}
