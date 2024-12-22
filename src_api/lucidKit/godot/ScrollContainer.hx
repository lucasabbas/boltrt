package lucidkit.godot;

@:native("godot.ScrollContainer")
extern class ScrollContainer extends Container {
    public var follow_focus: Bool;
    public var rect_clip_content: Bool;
    public var scroll_deadzone: Int;
    public var scroll_horizontal: Int;
    public var scroll_horizontal_enabled: Bool;
    public var scroll_vertical: Int;
    public var scroll_vertical_enabled: Bool;
    public function ensure_control_visible(control: Control): Void;
    public function get_h_scrollbar(): HScrollBar;
    public function get_v_scrollbar(): VScrollBar;
}
