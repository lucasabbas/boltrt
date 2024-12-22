package lucidKit.godot;

@:native("godot.EditorScript")
extern class EditorScript extends Reference {
    public function _run(): Void;
    public function add_root_node(node: Node): Void;
    public function get_editor_interface(): EditorInterface;
    public function get_scene(): Node;
    @:native("__new")
    public function new();
}
