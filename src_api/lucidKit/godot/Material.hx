package lucidKit.godot;

@:native("godot.Material")
extern class Material extends Resource {
    public var next_pass: Material;
    public var render_priority: Int;
    @:native("__new")
    public function new();
}
