package lucidKit.godot;

class RemoteTransform2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RemoteTransform2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RemoteTransform2DSignalNames {
}
@:native("godot.RemoteTransform2D")
extern class RemoteTransform2D extends Node2D {
    public var remotePath: NodePath;
    public var updatePosition: Bool;
    public var updateRotation: Bool;
    public var updateScale: Bool;
    public var useGlobalCoordinates: Bool;
    public function forceUpdateCache(): Void;
    @:native("__new")
    public function new();
}
