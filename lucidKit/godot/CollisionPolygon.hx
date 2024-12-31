package lucidKit.godot;

class CollisionPolygonMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CollisionPolygonPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CollisionPolygonPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CollisionPolygonSignalNames {
}
@:native("godot.CollisionPolygon")
extern class CollisionPolygon extends Spatial {
    public var depth: Float;
    public var disabled: Bool;
    public var margin: Float;
    public var polygon: PoolVector2Array;
    @:native("__new")
    public function new();
}
