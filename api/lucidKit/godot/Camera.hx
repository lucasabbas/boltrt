package lucidKit.godot;

@:native("godot.Camera")
extern class Camera extends Spatial {
    public var affectLod: Bool;
    public var cullMask: Int;
    public var current: Bool;
    public var dopplerTracking: Int;
    public var environment: Environment;
    public var far: Float;
    public var fov: Float;
    public var frustumOffset: Vector2;
    public var hOffset: Float;
    public var keepAspect: Int;
    public var near: Float;
    public var projection: Int;
    public var size: Float;
    public var vOffset: Float;
    public function clearCurrent(enableNext: Bool = true): Void;
    public function getCameraRid(): RID;
    public function getCameraTransform(): Transform;
    public function getCullMaskBit(layer: Int): Bool;
    public function getFrustum(): Array<Dynamic>;
    public function isPositionBehind(worldPoint: GdVector3): Bool;
    public function makeCurrent(): Void;
    public function projectLocalRayNormal(screenPoint: GdVector2): Vector3;
    public function projectPosition(screenPoint: GdVector2, zDepth: Float): Vector3;
    public function projectRayNormal(screenPoint: GdVector2): Vector3;
    public function projectRayOrigin(screenPoint: GdVector2): Vector3;
    public function setCullMaskBit(layer: Int, enable: Bool): Void;
    public function setFrustum(size: Float, offset: GdVector2, zNear: Float, zFar: Float): Void;
    public function setOrthogonal(size: Float, zNear: Float, zFar: Float): Void;
    public function setPerspective(fov: Float, zNear: Float, zFar: Float): Void;
    public function unprojectPosition(worldPoint: GdVector3): Vector2;
    @:native("__new")
    public function new();
}
