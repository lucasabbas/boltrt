package lucidKit.godot;

@:native("godot.PoolRealArray")
extern class PoolRealArray extends lucidKit.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(value: Float): Dynamic;
    public function append_array(array: PoolRealArray): Dynamic;
    public function clear(): Dynamic;
    public function count(value: Float): Int;
    public function empty(): Bool;
    public function fill(value: Float): Dynamic;
    public function find(value: Float, from: Int): Int;
    public function has(value: Float): Bool;
    public function insert(idx: Int, value: Float): Int;
    public function invert(): Dynamic;
    public function push_back(value: Float): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: Float, from: Int): Int;
    public function set(idx: Int, value: Float): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
