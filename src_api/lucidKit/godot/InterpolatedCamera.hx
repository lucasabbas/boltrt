package lucidkit.godot;

@:native("godot.InterpolatedCamera")
extern class InterpolatedCamera extends Camera {
    public var enabled: Bool;
    public var process_mode: Int;
    public var speed: Float;
    public var target: NodePath;
    public function set_target(target: Object): Void;
}
