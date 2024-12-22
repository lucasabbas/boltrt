package lucidKit.godot;

@:native("godot.Joint")
extern class Joint extends Spatial {
    public var collision/exclude_nodes: Bool;
    public var nodes/node_a: NodePath;
    public var nodes/node_b: NodePath;
    public var solver/priority: Int;
    @:native("__new")
    public function new();
}
