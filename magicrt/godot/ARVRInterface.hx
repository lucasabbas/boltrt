package magicrt.godot;

class ARVRInterfaceSignalNames {
}
@:native("godot.ARVRInterface")
extern class ARVRInterface extends Reference {
    public var arIsAnchorDetectionEnabled: Bool;
    public var interfaceIsInitialized: Bool;
    public var interfaceIsPrimary: Bool;
    public function getCameraFeedId(): Int;
    public function getCapabilities(): Int;
    public function getName(): String;
    public function getRenderTargetsize(): Vector2;
    public function getTrackingStatus(): Int;
    public function getTransformForEye(eye: Int, transform: Transform): Transform;
    public function initialize(): Bool;
    public function isStereo(): Bool;
    public function uninitialize(): Void;
    @:native("__new")
    public function new();
}
