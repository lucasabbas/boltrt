package lucidkit.godot;

@:native("godot.Slider")
extern class Slider extends Range {
    public var editable: Bool;
    public var focus_mode: Int;
    public var scrollable: Bool;
    public var size_flags_vertical: Int;
    public var tick_count: Int;
    public var ticks_on_borders: Bool;
}
