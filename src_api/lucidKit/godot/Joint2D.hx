package lucidKit.godot;

@:native("godot.Joint2D")
extern class Joint2D extends Node2D {
    public var bias: Float;
    public var disable_collision: Bool;
    public var node_a: NodePath;
    public var node_b: NodePath;
    @:native("__new")
    public function new();
}
