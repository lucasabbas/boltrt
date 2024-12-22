package lucidKit.godot;

@:native("godot.Joint")
extern class Joint extends Spatial {
    public var collision__exclude_nodes: Bool;
    public var nodes__node_a: NodePath;
    public var nodes__node_b: NodePath;
    public var solver__priority: Int;
    @:native("__new")
    public function new();
}
