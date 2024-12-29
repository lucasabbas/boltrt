package lucidKit.godot;

@:native("godot.EditorInspector")
extern class EditorInspector extends ScrollContainer {
    public function getEditedObject(): Object;
    public function refresh(): Void;
    @:native("__new")
    public function new();
}
