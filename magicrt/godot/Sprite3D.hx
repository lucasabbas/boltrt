package magicrt.godot;

class Sprite3DAxis {
    public static var X: Int = 0;
    public static var Y: Int = 1;
    public static var Z: Int = 2;
}
class Sprite3DBillboard {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class Sprite3DAlphaCut {
    public static var Disabled: Int = 0;
    public static var Discard: Int = 1;
    public static var OpaquePrepass: Int = 2;
}
class Sprite3DCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class Sprite3DLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class Sprite3DPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class Sprite3DMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Sprite3DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Sprite3DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Sprite3DSignalNames {
    public static var frameChanged: String = "frame_changed";
}
@:native("godot.Sprite3D")
extern class Sprite3D extends SpriteBase3D {
    public var frame: Int;
    public var frameCoords: Vector2;
    public var hframes: Int;
    public var regionEnabled: Bool;
    public var regionRect: Rect2;
    public var texture: Texture;
    public var vframes: Int;
    @:native("__new")
    public function new();
}
