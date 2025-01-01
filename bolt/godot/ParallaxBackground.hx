package bolt.godot;

class ParallaxBackgroundPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ParallaxBackgroundPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ParallaxBackgroundSignalNames {
}
@:native("godot.ParallaxBackground")
extern class ParallaxBackground extends CanvasLayer {
    public var scrollBaseOffset: Vector2;
    public var scrollBaseScale: Vector2;
    public var scrollIgnoreCameraZoom: Bool;
    public var scrollLimitBegin: Vector2;
    public var scrollLimitEnd: Vector2;
    public var scrollOffset: Vector2;
    @:native("__new")
    public function new();
}
