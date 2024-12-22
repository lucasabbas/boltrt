package lucidKit.godot;

@:native("godot.GradientTexture2D")
extern class GradientTexture2D extends Texture {
    public var fill: Int;
    public var fill_from: Vector2;
    public var fill_to: Vector2;
    public var flags: Int;
    public var gradient: Gradient;
    public var height: Int;
    public var repeat: Int;
    public var use_hdr: Bool;
    public var width: Int;
    @:native("__new")
    public function new();
}
