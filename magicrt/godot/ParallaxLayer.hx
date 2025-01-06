package magicrt.godot;

class ParallaxLayerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ParallaxLayerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ParallaxLayerSignalNames {
}
@:native("godot.ParallaxLayer")
extern class ParallaxLayer extends Node2D {
    public var motionMirroring: Vector2;
    public var motionOffset: Vector2;
    public var motionScale: Vector2;
    @:native("__new")
    public function new();
}
