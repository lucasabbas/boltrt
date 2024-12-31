package lucidKit.godot;

class LabelAlign {
    public static var Left: Int = 0;
    public static var Center: Int = 1;
    public static var Right: Int = 2;
    public static var Fill: Int = 3;
}
class LabelValign {
    public static var Top: Int = 0;
    public static var Center: Int = 1;
    public static var Bottom: Int = 2;
    public static var Fill: Int = 3;
}
class LabelGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class LabelGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class LabelFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class LabelMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class LabelMouseDefaultCursorShape {
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
class LabelPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class LabelPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LabelSignalNames {
}
@:native("godot.Label")
extern class Label extends Control {
    public var align: Int;
    public var autowrap: Bool;
    public var clipText: Bool;
    public var linesSkipped: Int;
    public var maxLinesVisible: Int;
    public var percentVisible: Float;
    public var text: String;
    public var uppercase: Bool;
    public var valign: Int;
    public var visibleCharacters: Int;
    public function getLineCount(): Int;
    public function getLineHeight(): Int;
    public function getTotalCharacterCount(): Int;
    public function getVisibleLineCount(): Int;
    @:native("__new")
    public function new();
}
