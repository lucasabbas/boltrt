package lucidKit.godot;

@:native("godot.PhysicsBody")
extern class PhysicsBody extends CollisionObject {
    public function add_collision_exception_with(body: Node): Void;
    public function get_collision_exceptions(): Array<Dynamic>;
    public function remove_collision_exception_with(body: Node): Void;
    @:native("__new")
    public function new();
}
