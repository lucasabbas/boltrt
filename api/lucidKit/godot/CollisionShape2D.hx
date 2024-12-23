package lucidKit.godot;

@:native("godot.CollisionShape2D")
extern class CollisionShape2D extends Node2D {
    public var disabled: Bool;
    public var oneWayCollision: Bool;
    public var oneWayCollisionMargin: Float;
    public var shape: Shape2D;
    @:native("__new")
    public function new();
}
