package lucidKit.godot;

@:native("godot.CullInstance")
extern class CullInstance extends Spatial {
    public var allowMerging: Bool;
    public var autoplacePriority: Int;
    public var includeInBound: Bool;
    public var portalMode: Int;
    @:native("__new")
    public function new();
}
