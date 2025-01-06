package magicrt.godot;

class AnimationNodeStateMachineSignalNames {
}
@:native("godot.AnimationNodeStateMachine")
extern class AnimationNodeStateMachine extends AnimationRootNode {
    public function addNode(name: String, node: AnimationNode, position: GdVector2): Void;
    public function addTransition(from: String, to: String, transition: AnimationNodeStateMachineTransition): Void;
    public function getEndNode(): String;
    public function getGraphOffset(): Vector2;
    public function getNode(name: String): AnimationNode;
    public function getNodeName(node: AnimationNode): String;
    public function getNodePosition(name: String): Vector2;
    public function getStartNode(): String;
    public function getTransition(idx: Int): AnimationNodeStateMachineTransition;
    public function getTransitionCount(): Int;
    public function getTransitionFrom(idx: Int): String;
    public function getTransitionTo(idx: Int): String;
    public function hasNode(name: String): Bool;
    public function hasTransition(from: String, to: String): Bool;
    public function removeNode(name: String): Void;
    public function removeTransition(from: String, to: String): Void;
    public function removeTransitionByIndex(idx: Int): Void;
    public function renameNode(name: String, newName: String): Void;
    public function replaceNode(name: String, node: AnimationNode): Void;
    public function setEndNode(name: String): Void;
    public function setGraphOffset(offset: GdVector2): Void;
    public function setNodePosition(name: String, position: GdVector2): Void;
    public function setStartNode(name: String): Void;
    @:native("__new")
    public function new();
}
