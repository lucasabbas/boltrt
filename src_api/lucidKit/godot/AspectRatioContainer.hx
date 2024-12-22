package lucidkit.godot;

@:native("godot.AspectRatioContainer")
extern class AspectRatioContainer extends Container {
    public var alignment_horizontal: Int;
    public var alignment_vertical: Int;
    public var ratio: Float;
    public var stretch_mode: Int;
}
