package lucidKit.godot;

@:native("godot.Joint")
extern class Joint extends Spatial {
    public var collisionExcludeNodes: Bool;
    public var nodesNodeA: NodePath;
    public var nodesNodeB: NodePath;
    public var solverPriority: Int;
    @:native("__new")
    public function new();
}
