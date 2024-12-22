package lucidKit.godot;

@:native("godot.ShortCut")
extern class ShortCut extends Resource {
    public var shortcut: InputEvent;
    public function getAsText(): String;
    public function isShortcut(event: InputEvent): Bool;
    public function isValid(): Bool;
    @:native("__new")
    public function new();
}
