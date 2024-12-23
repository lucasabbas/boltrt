package lucidKit.godot;

@:native("godot.GraphEdit")
extern class GraphEdit extends Control {
    public var minimapEnabled: Bool;
    public var minimapOpacity: Float;
    public var minimapSize: Vector2;
    public var rightDisconnects: Bool;
    public var scrollOffset: Vector2;
    public var showZoomLabel: Bool;
    public var snapDistance: Int;
    public var useSnap: Bool;
    public var zoom: Float;
    public var zoomMax: Float;
    public var zoomMin: Float;
    public var zoomStep: Float;
    public function addValidConnectionType(fromType: Int, toType: Int): Void;
    public function addValidLeftDisconnectType(type: Int): Void;
    public function addValidRightDisconnectType(type: Int): Void;
    public function clearConnections(): Void;
    public function connectNode(from: String, fromPort: Int, to: String, toPort: Int): Int;
    public function disconnectNode(from: String, fromPort: Int, to: String, toPort: Int): Void;
    public function getConnectionList(): Array<Dynamic>;
    public function getZoomHbox(): HBoxContainer;
    public function isNodeConnected(from: String, fromPort: Int, to: String, toPort: Int): Bool;
    public function isValidConnectionType(fromType: Int, toType: Int): Bool;
    public function removeValidConnectionType(fromType: Int, toType: Int): Void;
    public function removeValidLeftDisconnectType(type: Int): Void;
    public function removeValidRightDisconnectType(type: Int): Void;
    public function setConnectionActivity(from: String, fromPort: Int, to: String, toPort: Int, amount: Float): Void;
    public function setSelected(node: Node): Void;
    @:native("__new")
    public function new();
}
