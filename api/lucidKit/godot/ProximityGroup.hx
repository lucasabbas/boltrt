package lucidKit.godot;

@:native("godot.ProximityGroup")
extern class ProximityGroup extends Spatial {
    public var dispatchMode: Int;
    public var gridRadius: Vector3;
    public var groupName: String;
    public function broadcast(method: String, parameters: Variant): Void;
    @:native("__new")
    public function new();
}
