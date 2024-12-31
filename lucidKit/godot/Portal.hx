package lucidKit.godot;

class PortalMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PortalPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class PortalPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class PortalSignalNames {
}
@:native("godot.Portal")
extern class Portal extends Spatial {
    public var includeInBound: Bool;
    public var linkedRoom: NodePath;
    public var points: PoolVector2Array;
    public var portalActive: Bool;
    public var portalMargin: Float;
    public var twoWay: Bool;
    public var useDefaultMargin: Bool;
    public function setPoint(index: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
