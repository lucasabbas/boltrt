package magicrt.godot;

class PackedDataContainerSignalNames {
}
@:native("godot.PackedDataContainer")
extern class PackedDataContainer extends Resource {
    public var Data: Dynamic;
    public function pack(value: Dynamic): Int;
    public function size(): Int;
    @:native("__new")
    public function new();
}
