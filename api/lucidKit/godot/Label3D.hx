package lucidKit.godot;

@:native("godot.Label3D")
extern class Label3D extends GeometryInstance {
    public var alphaCut: Int;
    public var alphaScissorThreshold: Float;
    public var autowrap: Bool;
    public var billboard: Int;
    public var doubleSided: Bool;
    public var fixedSize: Bool;
    public var font: Font;
    public var horizontalAlignment: Int;
    public var lineSpacing: Float;
    public var modulate: Color;
    public var noDepthTest: Bool;
    public var offset: Vector2;
    public var outlineModulate: Color;
    public var outlineRenderPriority: Int;
    public var pixelSize: Float;
    public var renderPriority: Int;
    public var shaded: Bool;
    public var text: String;
    public var uppercase: Bool;
    public var verticalAlignment: Int;
    public var width: Float;
    public function generateTriangleMesh(): TriangleMesh;
    public function getDrawFlag(flag: Int): Bool;
    public function setDrawFlag(flag: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
