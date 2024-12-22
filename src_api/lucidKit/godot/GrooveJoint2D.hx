package lucidKit.godot;

@:native("godot.GrooveJoint2D")
extern class GrooveJoint2D extends Joint2D {
    public var initial_offset: Float;
    public var length: Float;
    @:native("__new")
    public function new();
}
