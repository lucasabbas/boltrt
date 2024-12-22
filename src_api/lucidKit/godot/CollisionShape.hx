package lucidkit.godot;

@:native("godot.CollisionShape")
extern class CollisionShape extends Spatial {
    public var disabled: Bool;
    public var shape: Shape;
    public function make_convex_from_brothers(): Void;
    public function resource_changed(resource: Resource): Void;
}
