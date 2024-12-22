package lucidKit.godot;

@:native("godot.PhysicsBody")
extern class PhysicsBody extends CollisionObject {
    public function addCollisionExceptionWith(body: Node): Void;
    public function getCollisionExceptions(): Array<Dynamic>;
    public function removeCollisionExceptionWith(body: Node): Void;
    @:native("__new")
    public function new();
}
