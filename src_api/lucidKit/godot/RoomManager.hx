package lucidKit.godot;

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
