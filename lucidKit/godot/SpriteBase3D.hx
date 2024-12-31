package lucidKit.godot;

class SpriteBase3DAxis {
    public static var X: Int = 0;
    public static var Y: Int = 1;
    public static var Z: Int = 2;
}
class SpriteBase3DBillboard {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class SpriteBase3DAlphaCut {
    public static var Disabled: Int = 0;
    public static var Discard: Int = 1;
    public static var OpaquePrepass: Int = 2;
}
class SpriteBase3DCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class SpriteBase3DLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class SpriteBase3DPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class SpriteBase3DMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpriteBase3DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SpriteBase3DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpriteBase3DSignalNames {
}
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
