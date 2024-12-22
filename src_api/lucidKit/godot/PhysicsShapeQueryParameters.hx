package lucidKit.godot;

@:native("godot.PhysicsShapeQueryParameters")
extern class PhysicsShapeQueryParameters extends Reference {
    public var collide_with_areas: Bool;
    public var collide_with_bodies: Bool;
    public var collision_mask: Int;
    public var exclude: Array<Dynamic>;
    public var margin: Float;
    public var shape_rid: RID;
    public var transform: Transform;
    public function set_shape(shape: Resource): Void;
    @:native("__new")
    public function new();
}
