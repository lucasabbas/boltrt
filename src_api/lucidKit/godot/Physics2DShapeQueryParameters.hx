package lucidkit.godot;

@:native("godot.Physics2DShapeQueryParameters")
extern class Physics2DShapeQueryParameters extends Reference {
    public var collide_with_areas: Bool;
    public var collide_with_bodies: Bool;
    public var collision_layer: Int;
    public var exclude: Array<Dynamic>;
    public var margin: Float;
    public var motion: Vector2;
    public var shape_rid: RID;
    public var transform: Transform2D;
    public function set_shape(shape: Resource): Void;
}
