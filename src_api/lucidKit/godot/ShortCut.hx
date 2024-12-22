package lucidKit.godot;

@:native("godot.ShortCut")
extern class ShortCut extends Resource {
    public var shortcut: InputEvent;
    public function get_as_text(): String;
    public function is_shortcut(event: InputEvent): Bool;
    public function is_valid(): Bool;
    @:native("__new")
    public function new();
}
