package lucidKit.godot;

@:native("godot.EditorInspector")
extern class EditorInspector extends ScrollContainer {
    public var scroll_horizontal_enabled: Bool;
    public function get_edited_object(): Object;
    public function refresh(): Void;
    @:native("__new")
    public function new();
}
