package lucidkit.godot;

@:native("godot.PoolColorArray")
extern class PoolColorArray extends lucidkit.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(color: Color): Dynamic;
    public function append_array(array: PoolColorArray): Dynamic;
    public function clear(): Dynamic;
    public function count(value: Color): Int;
    public function empty(): Bool;
    public function fill(color: Color): Dynamic;
    public function find(value: Color, from: Int): Int;
    public function has(value: Color): Bool;
    public function insert(idx: Int, color: Color): Int;
    public function invert(): Dynamic;
    public function push_back(color: Color): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: Color, from: Int): Int;
    public function set(idx: Int, color: Color): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
