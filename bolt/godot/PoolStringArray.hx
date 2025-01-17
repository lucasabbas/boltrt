package bolt.godot;

class lua.Table<Int, String>SignalNames {
}
@:native("godot.lua.Table<Int, String>")
extern class lua.Table<Int, String> extends bolt.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(string: String): Dynamic;
    public function appendArray(array: lua.Table<Int, String>): Dynamic;
    public function clear(): Dynamic;
    public function count(value: String): Int;
    public function empty(): Bool;
    public function fill(string: String): Dynamic;
    public function find(value: String, from: Int = 0): Int;
    public function has(value: String): Bool;
    public function insert(idx: Int, string: String): Int;
    public function invert(): Dynamic;
    public function join(delimiter: String): String;
    public function pushBack(string: String): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: String, from: Int = -1): Int;
    public function set(idx: Int, string: String): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
