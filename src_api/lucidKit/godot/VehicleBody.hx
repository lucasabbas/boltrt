package lucidKit.godot;

@:native("godot.VehicleBody")
extern class VehicleBody extends RigidBody {
    public var brake: Float;
    public var engine_force: Float;
    public var steering: Float;
    @:native("__new")
    public function new();
}
