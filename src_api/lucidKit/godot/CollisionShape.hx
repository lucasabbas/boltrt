package lucidKit.godot;

@:native("godot.CollisionShape")
extern class CollisionShape extends Spatial {
    public var disabled: Bool;
    public var shape: Shape;
    public function makeConvexFromBrothers(): Void;
    public function resourceChanged(resource: Resource): Void;
    @:native("__new")
    public function new();
}
