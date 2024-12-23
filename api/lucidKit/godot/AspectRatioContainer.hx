package lucidKit.godot;

@:native("godot.AspectRatioContainer")
extern class AspectRatioContainer extends Container {
    public var alignmentHorizontal: Int;
    public var alignmentVertical: Int;
    public var ratio: Float;
    public var stretchMode: Int;
    @:native("__new")
    public function new();
}
