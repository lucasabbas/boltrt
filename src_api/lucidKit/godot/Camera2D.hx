package lucidKit.godot;

@:native("godot.Camera2D")
extern class Camera2D extends Node2D {
    public var anchor_mode: Int;
    public var current: Bool;
    public var custom_viewport: Node;
    public var drag_margin_bottom: Float;
    public var drag_margin_h_enabled: Bool;
    public var drag_margin_left: Float;
    public var drag_margin_right: Float;
    public var drag_margin_top: Float;
    public var drag_margin_v_enabled: Bool;
    public var editor_draw_drag_margin: Bool;
    public var editor_draw_limits: Bool;
    public var editor_draw_screen: Bool;
    public var limit_bottom: Int;
    public var limit_left: Int;
    public var limit_right: Int;
    public var limit_smoothed: Bool;
    public var limit_top: Int;
    public var offset: Vector2;
    public var offset_h: Float;
    public var offset_v: Float;
    public var process_mode: Int;
    public var rotating: Bool;
    public var smoothing_enabled: Bool;
    public var smoothing_speed: Float;
    public var zoom: Vector2;
    public function align(): Void;
    public function clear_current(): Void;
    public function force_update_scroll(): Void;
    public function get_camera_position(): Vector2;
    public function get_camera_screen_center(): Vector2;
    public function get_drag_margin(margin: Int): Float;
    public function get_limit(margin: Int): Int;
    public function make_current(): Void;
    public function reset_smoothing(): Void;
    public function set_drag_margin(margin: Int, drag_margin: Float): Void;
    public function set_limit(margin: Int, limit: Int): Void;
    @:native("__new")
    public function new();
}
