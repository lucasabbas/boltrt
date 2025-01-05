package bolt.godot;

class SceneTreeSignalNames {
    public static var connectedToServer: String = "connected_to_server";
    public static var connectionFailed: String = "connection_failed";
    public static var filesDropped: String = "files_dropped";
    public static var globalMenuAction: String = "global_menu_action";
    public static var idleFrame: String = "idle_frame";
    public static var networkPeerConnected: String = "network_peer_connected";
    public static var networkPeerDisconnected: String = "network_peer_disconnected";
    public static var nodeAdded: String = "node_added";
    public static var nodeConfigurationWarningChanged: String = "node_configuration_warning_changed";
    public static var nodeRemoved: String = "node_removed";
    public static var nodeRenamed: String = "node_renamed";
    public static var physicsFrame: String = "physics_frame";
    public static var screenResized: String = "screen_resized";
    public static var serverDisconnected: String = "server_disconnected";
    public static var treeChanged: String = "tree_changed";
}
@:native("godot.SceneTree")
extern class SceneTree extends MainLoop {
    public var autoAcceptQuit: Bool;
    public var currentScene: Node;
    public var debugCollisionsHint: Bool;
    public var debugNavigationHint: Bool;
    public var editedSceneRoot: Node;
    public var multiplayer: MultiplayerAPI;
    public var multiplayerPoll: Bool;
    public var networkPeer: NetworkedMultiplayerPeer;
    public var paused: Bool;
    public var physicsInterpolation: Bool;
    public var quitOnGoBack: Bool;
    public var refuseNewNetworkConnections: Bool;
    public var root: Viewport;
    public var useFontOversampling: Bool;
    public function callGroup(group: String, method: String): Dynamic;
    public function callGroupFlags(flags: Int, group: String, method: String): Dynamic;
    public function changeScene(path: String): Int;
    public function changeSceneTo(packedScene: PackedScene): Int;
    public function createTimer(timeSec: Float, pauseModeProcess: Bool = true): SceneTreeTimer;
    public function createTween(): SceneTreeTween;
    public function getFirstNodeInGroup(group: String): Node;
    public function getFrame(): Int;
    public function getNetworkConnectedPeers(): PoolIntArray;
    public function getNetworkUniqueId(): Int;
    public function getNodeCount(): Int;
    public function getNodesInGroup(group: String): Array<Dynamic>;
    public function getProcessedTweens(): Array<Dynamic>;
    public function getRpcSenderId(): Int;
    public function hasGroup(name: String): Bool;
    public function hasNetworkPeer(): Bool;
    public function isInputHandled(): Bool;
    public function isNetworkServer(): Bool;
    public function notifyGroup(group: String, notification: Int): Void;
    public function notifyGroupFlags(callFlags: Int, group: String, notification: Int): Void;
    public function queueDelete(obj: Object): Void;
    public function quit(exitCode: Int = -1): Void;
    public function reloadCurrentScene(): Int;
    public function setGroup(group: String, property: String, value: Dynamic): Void;
    public function setGroupFlags(callFlags: Int, group: String, property: String, value: Dynamic): Void;
    public function setInputAsHandled(): Void;
    public function setScreenStretch(mode: Int, aspect: Int, minsize: GdVector2, scale: Float = 1): Void;
    @:native("__new")
    public function new();
}
