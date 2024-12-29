package lucidKit.godot;

@:native("godot.PhysicsBody2D")
extern class PhysicsBody2D extends CollisionObject2D {
    public var layers: Int;
    public function addCollisionExceptionWith(body: Node): Void;
    public function getCollisionExceptions(): Array<Dynamic>;
    public function removeCollisionExceptionWith(body: Node): Void;
    @:native("__new")
    public function new();
}
