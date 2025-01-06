package magicrt.godot;

class PackedSceneSignalNames {
}
@:native("godot.PackedScene")
extern class PackedScene extends Resource {
    public var Bundled: Map<Dynamic, Dynamic>;
    public function canInstance(): Bool;
    public function getState(): SceneState;
    public function instance(editState: Int = 0): Node;
    public function pack(path: Node): Int;
    @:native("__new")
    public function new();
}
