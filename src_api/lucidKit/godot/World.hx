package lucidKit.godot;

@:native("godot.World")
extern class World extends Resource {
    public var direct_space_state: PhysicsDirectSpaceState;
    public var environment: Environment;
    public var fallback_environment: Environment;
    public var navigation_map: RID;
    public var scenario: RID;
    public var space: RID;
    @:native("__new")
    public function new();
}
