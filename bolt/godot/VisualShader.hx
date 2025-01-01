package bolt.godot;

class VisualShaderSignalNames {
}
@:native("godot.VisualShader")
extern class VisualShader extends Shader {
    public var graphOffset: Vector2;
    public function addNode(type: Int, node: VisualShaderNode, position: GdVector2, id: Int): Void;
    public function canConnectNodes(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Bool;
    public function connectNodes(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Int;
    public function connectNodesForced(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Void;
    public function disconnectNodes(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Void;
    public function getNode(type: Int, id: Int): VisualShaderNode;
    public function getNodeConnections(type: Int): Array<Dynamic>;
    public function getNodeList(type: Int): PoolIntArray;
    public function getNodePosition(type: Int, id: Int): Vector2;
    public function getValidNodeId(type: Int): Int;
    public function isNodeConnection(type: Int, fromNode: Int, fromPort: Int, toNode: Int, toPort: Int): Bool;
    public function removeNode(type: Int, id: Int): Void;
    public function setMode(mode: Int): Void;
    public function setNodePosition(type: Int, id: Int, position: GdVector2): Void;
    @:native("__new")
    public function new();
}
