package lucidKit.godot;

@:native("godot.EditorInspector")
extern class EditorInspector extends ScrollContainer {
    public function get_edited_object(): Object;
    public function refresh(): Void;
    @:native("__new")
    public function new();
}
