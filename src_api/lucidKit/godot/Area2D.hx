package lucidKit.godot;

@:native("godot.Area2D")
extern class Area2D extends CollisionObject2D {
    public var angularDamp: Float;
    public var audioBusName: String;
    public var audioBusOverride: Bool;
    public var gravity: Float;
    public var gravityDistanceScale: Float;
    public var gravityPoint: Bool;
    public var gravityVec: Vector2;
    public var linearDamp: Float;
    public var monitorable: Bool;
    public var monitoring: Bool;
    public var priority: Float;
    public var spaceOverride: Int;
    public function getOverlappingAreas(): Array<Dynamic>;
    public function getOverlappingBodies(): Array<Dynamic>;
    public function overlapsArea(area: Node): Bool;
    public function overlapsBody(body: Node): Bool;
    @:native("__new")
    public function new();
}
