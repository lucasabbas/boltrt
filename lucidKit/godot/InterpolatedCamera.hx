package lucidKit.godot;

@:native("godot.InterpolatedCamera")
extern class InterpolatedCamera extends Camera {
    public var enabled: Bool;
    public var processMode: Int;
    public var speed: Float;
    public var target: NodePath;
    public function setTarget(target: Object): Void;
    @:native("__new")
    public function new();
}
