package bolt.godot;

class NodePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class NodePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class NodeSignalNames {
    public static var childEnteredTree: String = "child_entered_tree";
    public static var childExitingTree: String = "child_exiting_tree";
    public static var childOrderChanged: String = "child_order_changed";
    public static var ready: String = "ready";
    public static var renamed: String = "renamed";
    public static var treeEntered: String = "tree_entered";
    public static var treeExited: String = "tree_exited";
    public static var treeExiting: String = "tree_exiting";
}
@:native("godot.Node")
extern class Node extends Object {
    public var customMultiplayer: MultiplayerAPI;
    public var filename: String;
    public var multiplayer: MultiplayerAPI;
    public var name: String;
    public var owner: Node;
    public var pauseMode: Int;
    public var physicsInterpolationMode: Int;
    public var processPriority: Int;
    public var uniqueNameInOwner: Bool;
    public function EnterTree(): Void;
    public function ExitTree(): Void;
    public function GetConfigurationWarning(): String;
    public function Input(event: InputEvent): Void;
    public function PhysicsProcess(delta: Float): Void;
    public function Process(delta: Float): Void;
    public function Ready(): Void;
    public function UnhandledInput(event: InputEvent): Void;
    public function UnhandledKeyInput(event: InputEventKey): Void;
    public function addChild(node: Node, forceReadableName: Bool = false): Void;
    public function addChildBelowNode(node: Node, childNode: Node, forceReadableName: Bool = false): Void;
    public function addToGroup(group: String, persistent: Bool = false): Void;
    public function canProcess(): Bool;
    public function createTween(): SceneTreeTween;
    public function duplicate(flags: Int = 15): Node;
    public function findNode(mask: String, recursive: Bool = true, owned: Bool = true): Node;
    public function findParent(mask: String): Node;
    public function getChild(idx: Int): Node;
    public function getChildCount(): Int;
    public function getChildren(): Array<Dynamic>;
    public function getGroups(): Array<Dynamic>;
    public function getIndex(): Int;
    public function getNetworkMaster(): Int;
    public function getNode(path: NodePath): Node;
    public function getNodeAndResource(path: NodePath): Array<Dynamic>;
    public function getNodeOrNull(path: NodePath): Node;
    public function getParent(): Node;
    public function getPath(): NodePath;
    public function getPathTo(node: Node): NodePath;
    public function getPhysicsProcessDeltaTime(): Float;
    public function getPositionInParent(): Int;
    public function getProcessDeltaTime(): Float;
    public function getSceneInstanceLoadPlaceholder(): Bool;
    public function getTree(): SceneTree;
    public function getViewport(): Viewport;
    public function hasNode(path: NodePath): Bool;
    public function hasNodeAndResource(path: NodePath): Bool;
    public function isAParentOf(node: Node): Bool;
    public function isDisplayedFolded(): Bool;
    public function isEditableInstance(node: Node): Bool;
    public function isGreaterThan(node: Node): Bool;
    public function isInGroup(group: String): Bool;
    public function isInsideTree(): Bool;
    public function isNetworkMaster(): Bool;
    public function isNodeReady(): Bool;
    public function isPhysicsInterpolated(): Bool;
    public function isPhysicsInterpolatedAndEnabled(): Bool;
    public function isPhysicsProcessing(): Bool;
    public function isPhysicsProcessingInternal(): Bool;
    public function isProcessing(): Bool;
    public function isProcessingInput(): Bool;
    public function isProcessingInternal(): Bool;
    public function isProcessingUnhandledInput(): Bool;
    public function isProcessingUnhandledKeyInput(): Bool;
    public function moveChild(childNode: Node, toPosition: Int): Void;
    public function printStrayNodes(): Void;
    public function printTree(): Void;
    public function printTreePretty(): Void;
    public function propagateCall(method: String, args: Array<Dynamic>, parentFirst: Bool = false): Void;
    public function propagateNotification(what: Int): Void;
    public function queueFree(): Void;
    public function raise(): Void;
    public function removeAndSkip(): Void;
    public function removeChild(node: Node): Void;
    public function removeFromGroup(group: String): Void;
    public function replaceBy(node: Node, keepData: Bool = false): Void;
    public function requestReady(): Void;
    public function resetPhysicsInterpolation(): Void;
    public function rpc(method: String): Dynamic;
    public function rpcConfig(method: String, mode: Int): Void;
    public function rpcId(peerId: Int, method: String): Dynamic;
    public function rpcUnreliable(method: String): Dynamic;
    public function rpcUnreliableId(peerId: Int, method: String): Dynamic;
    public function rset(property: String, value: Dynamic): Void;
    public function rsetConfig(property: String, mode: Int): Void;
    public function rsetId(peerId: Int, property: String, value: Dynamic): Void;
    public function rsetUnreliable(property: String, value: Dynamic): Void;
    public function rsetUnreliableId(peerId: Int, property: String, value: Dynamic): Void;
    public function setDisplayFolded(fold: Bool): Void;
    public function setEditableInstance(node: Node, isEditable: Bool): Void;
    public function setNetworkMaster(id: Int, recursive: Bool = true): Void;
    public function setPhysicsProcess(enable: Bool): Void;
    public function setPhysicsProcessInternal(enable: Bool): Void;
    public function setProcess(enable: Bool): Void;
    public function setProcessInput(enable: Bool): Void;
    public function setProcessInternal(enable: Bool): Void;
    public function setProcessUnhandledInput(enable: Bool): Void;
    public function setProcessUnhandledKeyInput(enable: Bool): Void;
    public function setSceneInstanceLoadPlaceholder(loadPlaceholder: Bool): Void;
    public function updateConfigurationWarning(): Void;
    @:native("__new")
    public function new();
}
