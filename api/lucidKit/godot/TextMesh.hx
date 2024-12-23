package lucidKit.godot;

@:native("godot.TextMesh")
extern class TextMesh extends PrimitiveMesh {
    public var curveStep: Float;
    public var depth: Float;
    public var font: Font;
    public var horizontalAlignment: Int;
    public var pixelSize: Float;
    public var text: String;
    public var uppercase: Bool;
    @:native("__new")
    public function new();
}
