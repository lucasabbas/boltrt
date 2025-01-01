package bolt.godot;

class AnimationNodeBlendTreeSignalNames {
}
@:native("godot.AnimationNodeBlendTree")
extern class AnimationNodeBlendTree extends AnimationRootNode {
    public var graphOffset: Vector2;
    public function addNode(name: String, node: AnimationNode, position: GdVector2): Void;
    public function connectNode(inputNode: String, inputIndex: Int, outputNode: String): Void;
    public function disconnectNode(inputNode: String, inputIndex: Int): Void;
    public function getNode(name: String): AnimationNode;
    public function getNodePosition(name: String): Vector2;
    public function hasNode(name: String): Bool;
    public function removeNode(name: String): Void;
    public function renameNode(name: String, newName: String): Void;
    public function setNodePosition(name: String, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
