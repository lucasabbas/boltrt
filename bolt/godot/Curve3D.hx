package bolt.godot;

class Curve3DSignalNames {
}
@:native("godot.Curve3D")
extern class Curve3D extends Resource {
    public var bakeInterval: Float;
    public var upVectorEnabled: Bool;
    public function addPoint(position: GdVector3, in: GdVector3, out: GdVector3, index: Int = -1): Void;
    public function clearPoints(): Void;
    public function getBakedLength(): Float;
    public function getBakedPoints(): PoolVector3Array;
    public function getBakedTilts(): PoolRealArray;
    public function getBakedUpVectors(): PoolVector3Array;
    public function getClosestOffset(toPoint: GdVector3): Float;
    public function getClosestPoint(toPoint: GdVector3): Vector3;
    public function getPointCount(): Int;
    public function getPointIn(idx: Int): Vector3;
    public function getPointOut(idx: Int): Vector3;
    public function getPointPosition(idx: Int): Vector3;
    public function getPointTilt(idx: Int): Float;
    public function interpolate(idx: Int, t: Float): Vector3;
    public function interpolateBaked(offset: Float, cubic: Bool = false): Vector3;
    public function interpolateBakedUpVector(offset: Float, applyTilt: Bool = false): Vector3;
    public function interpolatef(fofs: Float): Vector3;
    public function removePoint(idx: Int): Void;
    public function setPointIn(idx: Int, position: GdVector3): Void;
    public function setPointOut(idx: Int, position: GdVector3): Void;
    public function setPointPosition(idx: Int, position: GdVector3): Void;
    public function setPointTilt(idx: Int, tilt: Float): Void;
    public function tessellate(maxStages: Int = 5, toleranceDegrees: Float = 4): PoolVector3Array;
    @:native("__new")
    public function new();
}
