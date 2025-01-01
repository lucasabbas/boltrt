package bolt.godot;

class Label3DBillboard {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class Label3DAlphaCut {
    public static var Disabled: Int = 0;
    public static var Discard: Int = 1;
    public static var OpaquePrepass: Int = 2;
}
class Label3DHorizontalAlignment {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
    public static var Fill: Int = 3;
}
class Label3DVerticalAlignment {
    public static var Top: Int = 0;
    public static var Center: Int = 1;
    public static var Bottom: Int = 2;
    public static var Fill: Int = 3;
}
class Label3DCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class Label3DLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class Label3DPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class Label3DMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Label3DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Label3DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Label3DSignalNames {
}
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
