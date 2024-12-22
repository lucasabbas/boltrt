package lucidKit.godot;

@:native("godot.World")
extern class World extends Resource {
    public var directSpaceState: PhysicsDirectSpaceState;
    public var environment: Environment;
    public var fallbackEnvironment: Environment;
    public var navigationMap: RID;
    public var scenario: RID;
    public var space: RID;
    @:native("__new")
    public function new();
}
