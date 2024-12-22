package lucidkit.godot;

@:native("godot.FlowContainer")
extern class FlowContainer extends Container {
    public var alignment: Int;
    public function get_line_count(): Int;
}
