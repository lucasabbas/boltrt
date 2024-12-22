package lucidkit.godot;

@:native("godot.RootMotionView")
extern class RootMotionView extends VisualInstance {
    public var animation_path: NodePath;
    public var cell_size: Float;
    public var color: Color;
    public var radius: Float;
    public var zero_y: Bool;
}
