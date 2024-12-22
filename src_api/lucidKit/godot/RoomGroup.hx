package lucidKit.godot;

@:native("godot.RoomGroup")
extern class RoomGroup extends Spatial {
    public var roomgroup_priority: Int;
    @:native("__new")
    public function new();
}
