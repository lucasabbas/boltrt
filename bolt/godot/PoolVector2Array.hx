package bolt.godot;

class PoolVector2ArraySignalNames {
}
@:native("godot.PoolVector2Array")
extern class PoolVector2Array extends bolt.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(vector2: GdVector2): Dynamic;
    public function appendArray(array: PoolVector2Array): Dynamic;
    public function clear(): Dynamic;
    public function count(value: GdVector2): Int;
    public function empty(): Bool;
    public function fill(vector2: GdVector2): Dynamic;
    public function find(value: GdVector2, from: Int = 0): Int;
    public function has(value: GdVector2): Bool;
    public function insert(idx: Int, vector2: GdVector2): Int;
    public function invert(): Dynamic;
    public function pushBack(vector2: GdVector2): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: GdVector2, from: Int = -1): Int;
    public function set(idx: Int, vector2: GdVector2): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
