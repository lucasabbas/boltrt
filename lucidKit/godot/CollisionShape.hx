package lucidKit.godot;

class CollisionShapeMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CollisionShapePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class CollisionShapePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class CollisionShapeSignalNames {
}
@:native("godot.CollisionShape")
extern class CollisionShape extends Spatial {
    public var disabled: Bool;
    public var shape: Shape;
    public function makeConvexFromBrothers(): Void;
    public function resourceChanged(resource: Resource): Void;
    @:native("__new")
    public function new();
}
