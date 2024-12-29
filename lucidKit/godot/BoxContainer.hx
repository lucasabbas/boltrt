package lucidKit.godot;

@:native("godot.BoxContainer")
extern class BoxContainer extends Container {
    public var alignment: Int;
    public function addSpacer(begin: Bool): Void;
    @:native("__new")
    public function new();
}
