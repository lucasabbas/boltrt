package lucidKit.godot;

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
