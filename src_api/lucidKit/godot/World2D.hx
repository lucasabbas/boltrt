package lucidkit.godot;

@:native("godot.World2D")
extern class World2D extends Resource {
    public var canvas: RID;
    public var direct_space_state: Physics2DDirectSpaceState;
    public var navigation_map: RID;
    public var space: RID;
}
