package lucidkit.godot;

@:native("godot.PackedScene")
extern class PackedScene extends Resource {
    public var _bundled: Map<Dynamic, Dynamic>;
    public function can_instance(): Bool;
    public function get_state(): SceneState;
    public function instance(edit_state: Int): Node;
    public function pack(path: Node): Int;
}
