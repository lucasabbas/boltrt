package magicrt.godot;

class Physics2DShapeQueryParametersSignalNames {
}
@:native("godot.Physics2DShapeQueryParameters")
extern class Physics2DShapeQueryParameters extends Reference {
    public var collideWithAreas: Bool;
    public var collideWithBodies: Bool;
    public var collisionLayer: Int;
    public var exclude: Array<Dynamic>;
    public var margin: Float;
    public var motion: Vector2;
    public var shapeRid: RID;
    public var transform: Transform2D;
    public function setShape(shape: Resource): Void;
    @:native("__new")
    public function new();
}
