package bolt.godot;

class SceneStateSignalNames {
}
@:native("godot.SceneState")
extern class SceneState extends Reference {
    public function getConnectionBinds(idx: Int): Array<Dynamic>;
    public function getConnectionCount(): Int;
    public function getConnectionFlags(idx: Int): Int;
    public function getConnectionMethod(idx: Int): String;
    public function getConnectionSignal(idx: Int): String;
    public function getConnectionSource(idx: Int): NodePath;
    public function getConnectionTarget(idx: Int): NodePath;
    public function getNodeCount(): Int;
    public function getNodeGroups(idx: Int): lua.Table[Int, String];
    public function getNodeIndex(idx: Int): Int;
    public function getNodeInstance(idx: Int): PackedScene;
    public function getNodeInstancePlaceholder(idx: Int): String;
    public function getNodeName(idx: Int): String;
    public function getNodeOwnerPath(idx: Int): NodePath;
    public function getNodePath(idx: Int, forParent: Bool = false): NodePath;
    public function getNodePropertyCount(idx: Int): Int;
    public function getNodePropertyName(idx: Int, propIdx: Int): String;
    public function getNodePropertyValue(idx: Int, propIdx: Int): Dynamic;
    public function getNodeType(idx: Int): String;
    public function isNodeInstancePlaceholder(idx: Int): Bool;
    @:native("__new")
    public function new();
}
