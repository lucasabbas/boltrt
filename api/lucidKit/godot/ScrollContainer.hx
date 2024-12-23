package lucidKit.godot;

@:native("godot.ScrollContainer")
extern class ScrollContainer extends Container {
    public var followFocus: Bool;
    public var scrollDeadzone: Int;
    public var scrollHorizontal: Int;
    public var scrollHorizontalEnabled: Bool;
    public var scrollVertical: Int;
    public var scrollVerticalEnabled: Bool;
    public function ensureControlVisible(control: Control): Void;
    public function getHScrollbar(): HScrollBar;
    public function getVScrollbar(): VScrollBar;
    @:native("__new")
    public function new();
}
