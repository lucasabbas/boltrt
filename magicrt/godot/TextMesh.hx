package magicrt.godot;

class TextMeshHorizontalAlignment {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
}
class TextMeshSignalNames {
}
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
