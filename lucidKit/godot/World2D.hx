package lucidKit.godot;

class World2DSignalNames {
}
@:native("godot.World2D")
extern class World2D extends Resource {
    public var canvas: RID;
    public var directSpaceState: Physics2DDirectSpaceState;
    public var navigationMap: RID;
    public var space: RID;
    @:native("__new")
    public function new();
}
