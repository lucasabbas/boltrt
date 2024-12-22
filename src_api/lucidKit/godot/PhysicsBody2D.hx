package lucidKit.godot;

@:native("godot.PhysicsBody2D")
extern class PhysicsBody2D extends CollisionObject2D {
    public var layers: Int;
    public function add_collision_exception_with(body: Node): Void;
    public function get_collision_exceptions(): Array<Dynamic>;
    public function remove_collision_exception_with(body: Node): Void;
    @:native("__new")
    public function new();
}
