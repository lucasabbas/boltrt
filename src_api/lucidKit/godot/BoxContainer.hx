package lucidKit.godot;

@:native("godot.BoxContainer")
extern class BoxContainer extends Container {
    public var alignment: Int;
    public var mouse_filter: Int;
    public function add_spacer(begin: Bool): Void;
    @:native("__new")
    public function new();
}
