package bolt.godot;

class AreaSpaceOverride {
    public static var Disabled: Int = 0;
    public static var Combine: Int = 1;
    public static var CombineReplace: Int = 2;
    public static var Replace: Int = 3;
    public static var ReplaceCombine: Int = 4;
}
class AreaMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AreaPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class AreaPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class AreaSignalNames {
    public static var areaEntered: String = "area_entered";
    public static var areaExited: String = "area_exited";
    public static var areaShapeEntered: String = "area_shape_entered";
    public static var areaShapeExited: String = "area_shape_exited";
    public static var bodyEntered: String = "body_entered";
    public static var bodyExited: String = "body_exited";
    public static var bodyShapeEntered: String = "body_shape_entered";
    public static var bodyShapeExited: String = "body_shape_exited";
}
@:native("godot.Area")
extern class Area extends CollisionObject {
    public var angularDamp: Float;
    public var audioBusName: String;
    public var audioBusOverride: Bool;
    public var gravity: Float;
    public var gravityDistanceScale: Float;
    public var gravityPoint: Bool;
    public var gravityVec: Vector3;
    public var linearDamp: Float;
    public var monitorable: Bool;
    public var monitoring: Bool;
    public var priority: Float;
    public var reverbBusAmount: Float;
    public var reverbBusEnable: Bool;
    public var reverbBusName: String;
    public var reverbBusUniformity: Float;
    public var spaceOverride: Int;
    public function getOverlappingAreas(): Array<Dynamic>;
    public function getOverlappingBodies(): Array<Dynamic>;
    public function overlapsArea(area: Node): Bool;
    public function overlapsBody(body: Node): Bool;
    @:native("__new")
    public function new();
}
