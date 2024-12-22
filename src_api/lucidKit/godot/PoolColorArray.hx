package lucidKit.godot;

@:native("godot.PoolColorArray")
extern class PoolColorArray extends lucidKit.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(color: Color): Dynamic;
    public function appendArray(array: PoolColorArray): Dynamic;
    public function clear(): Dynamic;
    public function count(value: Color): Int;
    public function empty(): Bool;
    public function fill(color: Color): Dynamic;
    public function find(value: Color, from: Int = 0): Int;
    public function has(value: Color): Bool;
    public function insert(idx: Int, color: Color): Int;
    public function invert(): Dynamic;
    public function pushBack(color: Color): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: Color, from: Int = -1): Int;
    public function set(idx: Int, color: Color): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
