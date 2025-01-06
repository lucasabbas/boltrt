package magicrt.godot;

class CollisionShape2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CollisionShape2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CollisionShape2DSignalNames {
}
@:native("godot.CollisionShape2D")
extern class CollisionShape2D extends Node2D {
    public var disabled: Bool;
    public var oneWayCollision: Bool;
    public var oneWayCollisionMargin: Float;
    public var shape: Shape2D;
    @:native("__new")
    public function new();
}
