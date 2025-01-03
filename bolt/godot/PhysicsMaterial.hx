package bolt.godot;

class PhysicsMaterialSignalNames {
}
@:native("godot.PhysicsMaterial")
extern class PhysicsMaterial extends Resource {
    public var absorbent: Bool;
    public var bounce: Float;
    public var friction: Float;
    public var rough: Bool;
    @:native("__new")
    public function new();
}