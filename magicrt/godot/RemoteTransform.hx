package magicrt.godot;

class RemoteTransformMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RemoteTransformPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RemoteTransformPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RemoteTransformSignalNames {
}
@:native("godot.RemoteTransform")
extern class RemoteTransform extends Spatial {
    public var remotePath: NodePath;
    public var updatePosition: Bool;
    public var updateRotation: Bool;
    public var updateScale: Bool;
    public var useGlobalCoordinates: Bool;
    public function forceUpdateCache(): Void;
    @:native("__new")
    public function new();
}
