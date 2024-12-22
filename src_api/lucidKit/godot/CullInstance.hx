package lucidKit.godot;

@:native("godot.CullInstance")
extern class CullInstance extends Spatial {
    public var allow_merging: Bool;
    public var autoplace_priority: Int;
    public var include_in_bound: Bool;
    public var portal_mode: Int;
    @:native("__new")
    public function new();
}
