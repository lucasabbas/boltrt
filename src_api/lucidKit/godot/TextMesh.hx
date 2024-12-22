package lucidkit.godot;

@:native("godot.TextMesh")
extern class TextMesh extends PrimitiveMesh {
    public var curve_step: Float;
    public var depth: Float;
    public var font: Font;
    public var horizontal_alignment: Int;
    public var pixel_size: Float;
    public var text: String;
    public var uppercase: Bool;
}
