package lucidKit.godot;

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
