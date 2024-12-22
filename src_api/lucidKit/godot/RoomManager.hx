package lucidkit.godot;

@:native("godot.RoomManager")
extern class RoomManager extends Spatial {
    public var active: Bool;
    public var debug_sprawl: Bool;
    public var default_portal_margin: Float;
    public var gameplay_monitor: Bool;
    public var merge_meshes: Bool;
    public var overlap_warning_threshold: Int;
    public var portal_depth_limit: Int;
    public var preview_camera: NodePath;
    public var process_priority: Int;
    public var pvs_mode: Int;
    public var roaming_expansion_margin: Float;
    public var room_simplify: Float;
    public var roomlist: NodePath;
    public var show_margins: Bool;
    public var use_secondary_pvs: Bool;
    public function rooms_clear(): Void;
    public function rooms_convert(): Void;
}
