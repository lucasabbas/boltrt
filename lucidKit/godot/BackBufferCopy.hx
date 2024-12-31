package lucidKit.godot;

class BackBufferCopyCopyMode {
    public static var Disabled: Int = 0;
    public static var Rect: Int = 1;
    public static var Viewport: Int = 2;
}
class BackBufferCopyPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class BackBufferCopyPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class BackBufferCopySignalNames {
}
@:native("godot.BackBufferCopy")
extern class BackBufferCopy extends Node2D {
    public var copyMode: Int;
    public var rect: Rect2;
    @:native("__new")
    public function new();
}
