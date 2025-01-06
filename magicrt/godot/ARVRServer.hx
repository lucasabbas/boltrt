package magicrt.godot;

class ARVRServerSignalNames {
    public static var interfaceAdded: String = "interface_added";
    public static var interfaceRemoved: String = "interface_removed";
    public static var trackerAdded: String = "tracker_added";
    public static var trackerRemoved: String = "tracker_removed";
}
@:native("godot.ARVRServer")
extern class ARVRServer extends Object {
    public var primaryInterface: ARVRInterface;
    public var worldScale: Float;
    public function addInterface(interface: ARVRInterface): Void;
    public function addTracker(tracker: ARVRPositionalTracker): Void;
    public function centerOnHmd(rotationMode: Int, keepHeight: Bool): Void;
    public function clearPrimaryInterfaceIf(interface: ARVRInterface): Void;
    public function findInterface(name: String): ARVRInterface;
    public function getHmdTransform(): Transform;
    public function getInterface(idx: Int): ARVRInterface;
    public function getInterfaceCount(): Int;
    public function getInterfaces(): Array<Dynamic>;
    public function getLastCommitUsec(): Int;
    public function getLastFrameUsec(): Int;
    public function getLastProcessUsec(): Int;
    public function getReferenceFrame(): Transform;
    public function getTracker(idx: Int): ARVRPositionalTracker;
    public function getTrackerCount(): Int;
    public function removeInterface(interface: ARVRInterface): Void;
    public function removeTracker(tracker: ARVRPositionalTracker): Void;
    @:native("__new")
    public function new();
}
