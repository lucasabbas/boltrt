package lucidKit.godot;

@:native("godot.PackedDataContainer")
extern class PackedDataContainer extends Resource {
    public var __data__: PoolByteArray;
    public function pack(value: Variant): Int;
    public function size(): Int;
    @:native("__new")
    public function new();
}
