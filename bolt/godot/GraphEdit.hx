package bolt.godot;

class GraphEditGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class GraphEditGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class GraphEditFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class GraphEditMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class GraphEditMouseDefaultCursorShape {
    public static var Arrow: Int = 0;
    public static var Ibeam: Int = 1;
    public static var PointingHand: Int = 2;
    public static var Cross: Int = 3;
    public static var Wait: Int = 4;
    public static var Busy: Int = 5;
    public static var Drag: Int = 6;
    public static var CanDrop: Int = 7;
    public static var Forbidden: Int = 8;
    public static var Vsize: Int = 9;
    public static var Hsize: Int = 10;
    public static var Bdiagsize: Int = 11;
    public static var Fdiagsize: Int = 12;
    public static var Move: Int = 13;
    public static var Vsplit: Int = 14;
    public static var Hsplit: Int = 15;
    public static var Help: Int = 16;
}
class GraphEditPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class GraphEditPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GraphEditSignalNames {
    public static var BeginNodeMove: String = "_begin_node_move";
    public static var EndNodeMove: String = "_end_node_move";
    public static var connectionFromEmpty: String = "connection_from_empty";
    public static var connectionRequest: String = "connection_request";
    public static var connectionToEmpty: String = "connection_to_empty";
    public static var copyNodesRequest: String = "copy_nodes_request";
    public static var deleteNodesRequest: String = "delete_nodes_request";
    public static var disconnectionRequest: String = "disconnection_request";
    public static var duplicateNodesRequest: String = "duplicate_nodes_request";
    public static var nodeSelected: String = "node_selected";
    public static var nodeUnselected: String = "node_unselected";
    public static var pasteNodesRequest: String = "paste_nodes_request";
    public static var popupRequest: String = "popup_request";
    public static var scrollOffsetChanged: String = "scroll_offset_changed";
}
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
