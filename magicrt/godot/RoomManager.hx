package magicrt.godot;

class RoomManagerPvsMode {
    public static var Disabled: Int = 0;
    public static var Partial: Int = 1;
    public static var Full: Int = 2;
}
class RoomManagerMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RoomManagerPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class RoomManagerPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class RoomManagerSignalNames {
}
@:native("godot.RoomManager")
extern class RoomManager extends Spatial {
    public var active: Bool;
    public var debugSprawl: Bool;
    public var defaultPortalMargin: Float;
    public var gameplayMonitor: Bool;
    public var mergeMeshes: Bool;
    public var overlapWarningThreshold: Int;
    public var portalDepthLimit: Int;
    public var previewCamera: NodePath;
    public var pvsMode: Int;
    public var roamingExpansionMargin: Float;
    public var roomSimplify: Float;
    public var roomlist: NodePath;
    public var showMargins: Bool;
    public var useSecondaryPvs: Bool;
    public function roomsClear(): Void;
    public function roomsConvert(): Void;
    @:native("__new")
    public function new();
}
