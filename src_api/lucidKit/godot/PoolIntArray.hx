package lucidKit.godot;

@:native("godot.PoolIntArray")
extern class PoolIntArray extends lucidKit.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(integer: Int): Dynamic;
    public function append_array(array: PoolIntArray): Dynamic;
    public function clear(): Dynamic;
    public function count(value: Int): Int;
    public function empty(): Bool;
    public function fill(integer: Int): Dynamic;
    public function find(value: Int, from: Int): Int;
    public function has(value: Int): Bool;
    public function insert(idx: Int, integer: Int): Int;
    public function invert(): Dynamic;
    public function push_back(integer: Int): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: Int, from: Int): Int;
    public function set(idx: Int, integer: Int): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
