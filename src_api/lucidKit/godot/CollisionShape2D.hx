package lucidKit.godot;

@:native("godot.CollisionShape2D")
extern class CollisionShape2D extends Node2D {
    public var disabled: Bool;
    public var one_way_collision: Bool;
    public var one_way_collision_margin: Float;
    public var shape: Shape2D;
    @:native("__new")
    public function new();
}
