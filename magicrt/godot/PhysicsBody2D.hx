package magicrt.godot;

class PhysicsBody2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PhysicsBody2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PhysicsBody2DSignalNames {
}
@:native("godot.PhysicsBody2D")
extern class PhysicsBody2D extends CollisionObject2D {
    public var layers: Int;
    public function addCollisionExceptionWith(body: Node): Void;
    public function getCollisionExceptions(): Array<Dynamic>;
    public function removeCollisionExceptionWith(body: Node): Void;
    @:native("__new")
    public function new();
}
