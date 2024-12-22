package lucidKit.godot;

@:native("godot.Slider")
extern class Slider extends Range {
    public var editable: Bool;
    public var scrollable: Bool;
    public var tick_count: Int;
    public var ticks_on_borders: Bool;
    @:native("__new")
    public function new();
}
