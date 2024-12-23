package lucidKit.godot;

@:native("godot.PhysicsShapeQueryParameters")
extern class PhysicsShapeQueryParameters extends Reference {
    public var collideWithAreas: Bool;
    public var collideWithBodies: Bool;
    public var collisionMask: Int;
    public var exclude: Array<Dynamic>;
    public var margin: Float;
    public var shapeRid: RID;
    public var transform: Transform;
    public function setShape(shape: Resource): Void;
    @:native("__new")
    public function new();
}
