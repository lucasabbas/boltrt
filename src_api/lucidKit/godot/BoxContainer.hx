package lucidkit.godot;

@:native("godot.BoxContainer")
extern class BoxContainer extends Container {
    public var alignment: Int;
    public var mouse_filter: Int;
    public function add_spacer(begin: Bool): Void;
}
