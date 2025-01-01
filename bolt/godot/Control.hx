package bolt.godot;

class ControlGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class ControlGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class ControlFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class ControlMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class ControlMouseDefaultCursorShape {
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
class ControlPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ControlPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ControlSignalNames {
    public static var focusEntered: String = "focus_entered";
    public static var focusExited: String = "focus_exited";
    public static var guiInput: String = "gui_input";
    public static var minimumSizeChanged: String = "minimum_size_changed";
    public static var modalClosed: String = "modal_closed";
    public static var mouseEntered: String = "mouse_entered";
    public static var mouseExited: String = "mouse_exited";
    public static var resized: String = "resized";
    public static var sizeFlagsChanged: String = "size_flags_changed";
}
@:native("godot.Control")
extern class Control extends CanvasItem {
    public var anchorBottom: Float;
    public var anchorLeft: Float;
    public var anchorRight: Float;
    public var anchorTop: Float;
    public var focusMode: Int;
    public var focusNeighbourBottom: NodePath;
    public var focusNeighbourLeft: NodePath;
    public var focusNeighbourRight: NodePath;
    public var focusNeighbourTop: NodePath;
    public var focusNext: NodePath;
    public var focusPrevious: NodePath;
    public var growHorizontal: Int;
    public var growVertical: Int;
    public var hintTooltip: String;
    public var inputPassOnModalCloseClick: Bool;
    public var marginBottom: Float;
    public var marginLeft: Float;
    public var marginRight: Float;
    public var marginTop: Float;
    public var mouseDefaultCursorShape: Int;
    public var mouseFilter: Int;
    public var rectClipContent: Bool;
    public var rectGlobalPosition: Vector2;
    public var rectMinSize: Vector2;
    public var rectPivotOffset: Vector2;
    public var rectPosition: Vector2;
    public var rectRotation: Float;
    public var rectScale: Vector2;
    public var rectSize: Vector2;
    public var sizeFlagsHorizontal: Int;
    public var sizeFlagsStretchRatio: Float;
    public var sizeFlagsVertical: Int;
    public var theme: Theme;
    public var themeTypeVariation: String;
    public function ClipsInput(): Bool;
    public function GetMinimumSize(): Vector2;
    public function GuiInput(event: InputEvent): Void;
    public function MakeCustomTooltip(forText: String): Control;
    public function acceptEvent(): Void;
    public function addColorOverride(name: String, color: Color): Void;
    public function addConstantOverride(name: String, constant: Int): Void;
    public function addFontOverride(name: String, font: Font): Void;
    public function addIconOverride(name: String, texture: Texture): Void;
    public function addShaderOverride(name: String, shader: Shader): Void;
    public function addStyleboxOverride(name: String, stylebox: StyleBox): Void;
    public function canDropData(position: GdVector2, data: Variant): Bool;
    public function dropData(position: GdVector2, data: Variant): Void;
    public function findNextValidFocus(): Control;
    public function findPrevValidFocus(): Control;
    public function forceDrag(data: Variant, preview: Control): Void;
    public function getAnchor(margin: Int): Float;
    public function getBegin(): Vector2;
    public function getColor(name: String, themeType: String): Color;
    public function getCombinedMinimumSize(): Vector2;
    public function getConstant(name: String, themeType: String): Int;
    public function getCursorShape(position: GdVector2): Int;
    public function getDragData(position: GdVector2): Variant;
    public function getEnd(): Vector2;
    public function getFocusNeighbour(margin: Int): NodePath;
    public function getFocusOwner(): Control;
    public function getFont(name: String, themeType: String): Font;
    public function getGlobalRect(): Rect2;
    public function getIcon(name: String, themeType: String): Texture;
    public function getMargin(margin: Int): Float;
    public function getMinimumSize(): Vector2;
    public function getParentAreaSize(): Vector2;
    public function getParentControl(): Control;
    public function getRect(): Rect2;
    public function getRotation(): Float;
    public function getStylebox(name: String, themeType: String): StyleBox;
    public function getThemeDefaultFont(): Font;
    public function getTooltip(atPosition: GdVector2): String;
    public function grabClickFocus(): Void;
    public function grabFocus(): Void;
    public function hasColor(name: String, themeType: String): Bool;
    public function hasColorOverride(name: String): Bool;
    public function hasConstant(name: String, themeType: String): Bool;
    public function hasConstantOverride(name: String): Bool;
    public function hasFocus(): Bool;
    public function hasFont(name: String, themeType: String): Bool;
    public function hasFontOverride(name: String): Bool;
    public function hasIcon(name: String, themeType: String): Bool;
    public function hasIconOverride(name: String): Bool;
    public function hasPoint(point: GdVector2): Bool;
    public function hasShaderOverride(name: String): Bool;
    public function hasStylebox(name: String, themeType: String): Bool;
    public function hasStyleboxOverride(name: String): Bool;
    public function isDragSuccessful(): Bool;
    public function minimumSizeChanged(): Void;
    public function releaseFocus(): Void;
    public function removeColorOverride(name: String): Void;
    public function removeConstantOverride(name: String): Void;
    public function removeFontOverride(name: String): Void;
    public function removeIconOverride(name: String): Void;
    public function removeShaderOverride(name: String): Void;
    public function removeStyleboxOverride(name: String): Void;
    public function setAnchor(margin: Int, anchor: Float, keepMargin: Bool = false, pushOppositeAnchor: Bool = true): Void;
    public function setAnchorAndMargin(margin: Int, anchor: Float, offset: Float, pushOppositeAnchor: Bool = false): Void;
    public function setAnchorsAndMarginsPreset(preset: Int, resizeMode: Int = 0, margin: Int = 0): Void;
    public function setAnchorsPreset(preset: Int, keepMargins: Bool = false): Void;
    public function setBegin(position: GdVector2): Void;
    public function setDragForwarding(target: Control): Void;
    public function setDragPreview(control: Control): Void;
    public function setEnd(position: GdVector2): Void;
    public function setFocusNeighbour(margin: Int, neighbour: NodePath): Void;
    public function setGlobalPosition(position: GdVector2, keepMargins: Bool = false): Void;
    public function setMargin(margin: Int, offset: Float): Void;
    public function setMarginsPreset(preset: Int, resizeMode: Int = 0, margin: Int = 0): Void;
    public function setPosition(position: GdVector2, keepMargins: Bool = false): Void;
    public function setRotation(radians: Float): Void;
    public function setSize(size: GdVector2, keepMargins: Bool = false): Void;
    public function showModal(exclusive: Bool = false): Void;
    public function warpMouse(toPosition: GdVector2): Void;
    @:native("__new")
    public function new();
}
