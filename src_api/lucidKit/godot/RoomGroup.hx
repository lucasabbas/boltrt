package lucidKit.godot;

@:native("godot.RoomGroup")
extern class RoomGroup extends Spatial {
    public var roomgroupPriority: Int;
    @:native("__new")
    public function new();
}
