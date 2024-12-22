package lucidKit.godot;

@:native("godot.SpriteBase3D")
extern class SpriteBase3D extends GeometryInstance {
    public var alphaCut: Int;
    public var axis: Int;
    public var billboard: Int;
    public var centered: Bool;
    public var doubleSided: Bool;
    public var fixedSize: Bool;
    public var flipH: Bool;
    public var flipV: Bool;
    public var modulate: Color;
    public var noDepthTest: Bool;
    public var offset: Vector2;
    public var opacity: Float;
    public var pixelSize: Float;
    public var renderPriority: Int;
    public var shaded: Bool;
    public var transparent: Bool;
    public function generateTriangleMesh(): TriangleMesh;
    public function getDrawFlag(flag: Int): Bool;
    public function getItemRect(): Rect2;
    public function setDrawFlag(flag: Int, enabled: Bool): Void;
    @:native("__new")
    public function new();
}
