package lucidKit.godot;

class SoftBodyCastShadow {
    public static var Off: Int = 0;
    public static var On: Int = 1;
    public static var DoubleSided: Int = 2;
    public static var ShadowsOnly: Int = 3;
}
class SoftBodyLightmapScale {
    public static var Scale1x: Int = 0;
    public static var Scale2x: Int = 1;
    public static var Scale4x: Int = 2;
    public static var Scale8x: Int = 3;
    public static var Max: Int = 4;
}
class SoftBodyPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class SoftBodyMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SoftBodyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SoftBodyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SoftBodySignalNames {
}
@:native("godot.SoftBody")
extern class SoftBody extends MeshInstance {
    public var areaAngularStiffness: Float;
    public var collisionLayer: Int;
    public var collisionMask: Int;
    public var dampingCoefficient: Float;
    public var dragCoefficient: Float;
    public var linearStiffness: Float;
    public var parentCollisionIgnore: NodePath;
    public var physicsEnabled: Bool;
    public var poseMatchingCoefficient: Float;
    public var pressureCoefficient: Float;
    public var rayPickable: Bool;
    public var simulationPrecision: Int;
    public var totalMass: Float;
    public var volumeStiffness: Float;
    public function addCollisionExceptionWith(body: Node): Void;
    public function getCollisionExceptions(): Array<Dynamic>;
    public function getCollisionLayerBit(bit: Int): Bool;
    public function getCollisionMaskBit(bit: Int): Bool;
    public function getPointTransform(pointIndex: Int): Vector3;
    public function isPointPinned(pointIndex: Int): Bool;
    public function removeCollisionExceptionWith(body: Node): Void;
    public function setCollisionLayerBit(bit: Int, value: Bool): Void;
    public function setCollisionMaskBit(bit: Int, value: Bool): Void;
    public function setPointPinned(pointIndex: Int, pinned: Bool, attachmentPath: NodePath): Void;
    @:native("__new")
    public function new();
}
