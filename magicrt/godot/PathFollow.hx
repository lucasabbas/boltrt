package magicrt.godot;

class PathFollowRotationMode {
    public static var None: Int = 0;
    public static var Y: Int = 1;
    public static var Xy: Int = 2;
    public static var Xyz: Int = 3;
    public static var Oriented: Int = 4;
}
class PathFollowMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PathFollowPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PathFollowPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PathFollowSignalNames {
}
@:native("godot.PathFollow")
extern class PathFollow extends Spatial {
    public var cubicInterp: Bool;
    public var hOffset: Float;
    public var loop: Bool;
    public var offset: Float;
    public var rotationMode: Int;
    public var unitOffset: Float;
    public var vOffset: Float;
    @:native("__new")
    public function new();
}
