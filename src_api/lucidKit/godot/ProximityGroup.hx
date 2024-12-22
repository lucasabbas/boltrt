package lucidKit.godot;

@:native("godot.ProximityGroup")
extern class ProximityGroup extends Spatial {
    public var dispatch_mode: Int;
    public var grid_radius: Vector3;
    public var group_name: String;
    public function broadcast(method: String, parameters: Variant): Void;
    @:native("__new")
    public function new();
}
