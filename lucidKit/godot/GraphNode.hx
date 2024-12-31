package lucidKit.godot;

class GraphNodeOverlay {
    public static var Disabled: Int = 0;
    public static var Breakpoint: Int = 1;
    public static var Position: Int = 2;
}
class GraphNodeGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class GraphNodeGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class GraphNodeFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class GraphNodeMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class GraphNodeMouseDefaultCursorShape {
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
class GraphNodePauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class GraphNodePhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class GraphNodeSignalNames {
    public static var closeRequest: String = "close_request";
    public static var dragged: String = "dragged";
    public static var offsetChanged: String = "offset_changed";
    public static var raiseRequest: String = "raise_request";
    public static var resizeRequest: String = "resize_request";
    public static var selected: String = "selected";
    public static var slotUpdated: String = "slot_updated";
    public static var unselected: String = "unselected";
}
@:native("godot.GraphNode")
extern class GraphNode extends Container {
    public var comment: Bool;
    public var offset: Vector2;
    public var overlay: Int;
    public var resizable: Bool;
    public var selected: Bool;
    public var showClose: Bool;
    public var title: String;
    public function clearAllSlots(): Void;
    public function clearSlot(idx: Int): Void;
    public function getConnectionInputColor(idx: Int): Color;
    public function getConnectionInputCount(): Int;
    public function getConnectionInputPosition(idx: Int): Vector2;
    public function getConnectionInputType(idx: Int): Int;
    public function getConnectionOutputColor(idx: Int): Color;
    public function getConnectionOutputCount(): Int;
    public function getConnectionOutputPosition(idx: Int): Vector2;
    public function getConnectionOutputType(idx: Int): Int;
    public function getSlotColorLeft(idx: Int): Color;
    public function getSlotColorRight(idx: Int): Color;
    public function getSlotTypeLeft(idx: Int): Int;
    public function getSlotTypeRight(idx: Int): Int;
    public function isSlotEnabledLeft(idx: Int): Bool;
    public function isSlotEnabledRight(idx: Int): Bool;
    public function setSlot(idx: Int, enableLeft: Bool, typeLeft: Int, colorLeft: Color, enableRight: Bool, typeRight: Int, colorRight: Color, customLeft: Texture, customRight: Texture): Void;
    public function setSlotColorLeft(idx: Int, colorLeft: Color): Void;
    public function setSlotColorRight(idx: Int, colorRight: Color): Void;
    public function setSlotEnabledLeft(idx: Int, enableLeft: Bool): Void;
    public function setSlotEnabledRight(idx: Int, enableRight: Bool): Void;
    public function setSlotTypeLeft(idx: Int, typeLeft: Int): Void;
    public function setSlotTypeRight(idx: Int, typeRight: Int): Void;
    @:native("__new")
    public function new();
}
