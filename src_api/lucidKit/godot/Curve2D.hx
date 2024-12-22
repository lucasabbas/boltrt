package lucidKit.godot;

@:native("godot.Curve2D")
extern class Curve2D extends Resource {
    public var bakeInterval: Float;
    public function addPoint(position: GdVector2, in: GdVector2, out: GdVector2, index: Int = -1): Void;
    public function clearPoints(): Void;
    public function getBakedLength(): Float;
    public function getBakedPoints(): PoolVector2Array;
    public function getClosestOffset(toPoint: GdVector2): Float;
    public function getClosestPoint(toPoint: GdVector2): Vector2;
    public function getPointCount(): Int;
    public function getPointIn(idx: Int): Vector2;
    public function getPointOut(idx: Int): Vector2;
    public function getPointPosition(idx: Int): Vector2;
    public function interpolate(idx: Int, t: Float): Vector2;
    public function interpolateBaked(offset: Float, cubic: Bool = false): Vector2;
    public function interpolatef(fofs: Float): Vector2;
    public function removePoint(idx: Int): Void;
    public function setPointIn(idx: Int, position: GdVector2): Void;
    public function setPointOut(idx: Int, position: GdVector2): Void;
    public function setPointPosition(idx: Int, position: GdVector2): Void;
    public function tessellate(maxStages: Int = 5, toleranceDegrees: Float = 4): PoolVector2Array;
    @:native("__new")
    public function new();
}
