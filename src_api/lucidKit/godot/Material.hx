package lucidKit.godot;

@:native("godot.Material")
extern class Material extends Resource {
    public var nextPass: Material;
    public var renderPriority: Int;
    @:native("__new")
    public function new();
}
