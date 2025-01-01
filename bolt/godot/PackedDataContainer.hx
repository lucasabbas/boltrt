package bolt.godot;

class PackedDataContainerSignalNames {
}
@:native("godot.PackedDataContainer")
extern class PackedDataContainer extends Resource {
    public var Data: PoolByteArray;
    public function pack(value: Variant): Int;
    public function size(): Int;
    @:native("__new")
    public function new();
}
