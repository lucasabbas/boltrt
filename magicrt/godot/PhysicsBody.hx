package magicrt.godot;

class PhysicsBodyMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PhysicsBodyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PhysicsBodyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PhysicsBodySignalNames {
}
@:native("godot.PhysicsBody")
extern class PhysicsBody extends CollisionObject {
    public function addCollisionExceptionWith(body: Node): Void;
    public function getCollisionExceptions(): Array<Dynamic>;
    public function removeCollisionExceptionWith(body: Node): Void;
    @:native("__new")
    public function new();
}
