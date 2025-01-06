package magicrt.godot;

class AnimatedSprite3DAxis {
    public static var X: Int = 0;
    public static var Y: Int = 1;
    public static var Z: Int = 2;
}
class AnimatedSprite3DBillboard {
    public static var Disabled: Int = 0;
    public static var Enabled: Int = 1;
    public static var FixedY: Int = 2;
    public static var Particles: Int = 3;
}
class AnimatedSprite3DAlphaCut {
    public static var Disabled: Int = 0;
    public static var Discard: Int = 1;
    public static var OpaquePrepass: Int = 2;
}
class AnimatedSprite3DCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class AnimatedSprite3DLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class AnimatedSprite3DPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class AnimatedSprite3DMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AnimatedSprite3DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AnimatedSprite3DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AnimatedSprite3DSignalNames {
    public static var animationFinished: String = "animation_finished";
    public static var frameChanged: String = "frame_changed";
}
@:native("godot.AnimatedSprite3D")
extern class AnimatedSprite3D extends SpriteBase3D {
    public var animation: String;
    public var frame: Int;
    public var frames: SpriteFrames;
    public var playing: Bool;
    public function isPlaying(): Bool;
    public function play(anim: String): Void;
    public function stop(): Void;
    @:native("__new")
    public function new();
}
