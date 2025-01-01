package bolt.godot;

class SpatialMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpatialPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class SpatialPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class SpatialSignalNames {
    public static var gameplayEntered: String = "gameplay_entered";
    public static var gameplayExited: String = "gameplay_exited";
    public static var visibilityChanged: String = "visibility_changed";
}
@:native("godot.Spatial")
extern class Spatial extends Node {
    public var gizmo: SpatialGizmo;
    public var globalPosition: Vector3;
    public var globalRotation: Vector3;
    public var globalTransform: Transform;
    public var globalTranslation: Vector3;
    public var lodRange: Float;
    public var mergingMode: Int;
    public var position: Vector3;
    public var rotation: Vector3;
    public var rotationDegrees: Vector3;
    public var scale: Vector3;
    public var transform: Transform;
    public var translation: Vector3;
    public var visible: Bool;
    public function forceUpdateTransform(): Void;
    public function getGlobalTransformInterpolated(): Transform;
    public function getParentSpatial(): Spatial;
    public function getWorld(): World;
    public function globalRotate(axis: GdVector3, angle: Float): Void;
    public function globalScale(scale: GdVector3): Void;
    public function globalTranslate(offset: GdVector3): Void;
    public function hide(): Void;
    public function isLocalTransformNotificationEnabled(): Bool;
    public function isScaleDisabled(): Bool;
    public function isSetAsToplevel(): Bool;
    public function isTransformNotificationEnabled(): Bool;
    public function isVisibleInTree(): Bool;
    public function lookAt(target: GdVector3, up: GdVector3): Void;
    public function lookAtFromPosition(position: GdVector3, target: GdVector3, up: GdVector3): Void;
    public function orthonormalize(): Void;
    public function rotate(axis: GdVector3, angle: Float): Void;
    public function rotateObjectLocal(axis: GdVector3, angle: Float): Void;
    public function rotateX(angle: Float): Void;
    public function rotateY(angle: Float): Void;
    public function rotateZ(angle: Float): Void;
    public function scaleObjectLocal(scale: GdVector3): Void;
    public function setAsToplevel(enable: Bool): Void;
    public function setDisableScale(disable: Bool): Void;
    public function setIdentity(): Void;
    public function setIgnoreTransformNotification(enabled: Bool): Void;
    public function setNotifyLocalTransform(enable: Bool): Void;
    public function setNotifyTransform(enable: Bool): Void;
    public function show(): Void;
    public function toGlobal(localPoint: GdVector3): Vector3;
    public function toLocal(globalPoint: GdVector3): Vector3;
    public function translate(offset: GdVector3): Void;
    public function translateObjectLocal(offset: GdVector3): Void;
    public function updateGizmo(): Void;
    @:native("__new")
    public function new();
}
