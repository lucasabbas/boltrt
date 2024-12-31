package lucidKit.godot;

class RootMotionViewSignalNames {
}
@:native("godot.RootMotionView")
extern class RootMotionView extends VisualInstance {
    public var animationPath: NodePath;
    public var cellSize: Float;
    public var color: Color;
    public var radius: Float;
    public var zeroY: Bool;
    @:native("__new")
    public function new();
}
