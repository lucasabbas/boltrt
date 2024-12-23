package lucidKit.godot;

@:native("godot.Joint2D")
extern class Joint2D extends Node2D {
    public var bias: Float;
    public var disableCollision: Bool;
    public var nodeA: NodePath;
    public var nodeB: NodePath;
    @:native("__new")
    public function new();
}
