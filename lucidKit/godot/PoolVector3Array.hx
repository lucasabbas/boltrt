package lucidKit.godot;

class PoolVector3ArraySignalNames {
}
@:native("godot.PoolVector3Array")
extern class PoolVector3Array extends lucidKit.core.MonoObject {
    @:native("__new")
    public function new(from: Array<Dynamic>);
    public function append(vector3: GdVector3): Dynamic;
    public function appendArray(array: PoolVector3Array): Dynamic;
    public function clear(): Dynamic;
    public function count(value: GdVector3): Int;
    public function empty(): Bool;
    public function fill(vector3: GdVector3): Dynamic;
    public function find(value: GdVector3, from: Int = 0): Int;
    public function has(value: GdVector3): Bool;
    public function insert(idx: Int, vector3: GdVector3): Int;
    public function invert(): Dynamic;
    public function pushBack(vector3: GdVector3): Dynamic;
    public function remove(idx: Int): Dynamic;
    public function resize(idx: Int): Dynamic;
    public function rfind(value: GdVector3, from: Int = -1): Int;
    public function set(idx: Int, vector3: GdVector3): Dynamic;
    public function size(): Int;
    public function sort(): Dynamic;
}
