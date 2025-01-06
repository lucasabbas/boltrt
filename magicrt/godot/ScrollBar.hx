package magicrt.godot;

class ScrollBarGrowHorizontal {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class ScrollBarGrowVertical {
    public static var Begin: Int = 0;
    public static var End: Int = 1;
    public static var Both: Int = 2;
}
class ScrollBarFocusMode {
    public static var None: Int = 0;
    public static var Click: Int = 1;
    public static var All: Int = 2;
}
class ScrollBarMouseFilter {
    public static var Stop: Int = 0;
    public static var Pass: Int = 1;
    public static var Ignore: Int = 2;
}
class ScrollBarMouseDefaultCursorShape {
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
class ScrollBarPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class ScrollBarPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class ScrollBarSignalNames {
    public static var scrolling: String = "scrolling";
}
@:native("godot.ScrollBar")
extern class ScrollBar extends Range {
    public var customStep: Float;
    @:native("__new")
    public function new();
}
