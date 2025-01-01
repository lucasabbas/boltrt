package bolt.godot;

class GradientTexture2DFill {
    public static var Linear: Int = 0;
    public static var Radial: Int = 1;
}
class GradientTexture2DRepeat {
    public static var None: Int = 0;
    public static var Repeat: Int = 1;
    public static var Mirror: Int = 2;
}
class GradientTexture2DSignalNames {
}
@:native("godot.GradientTexture2D")
extern class GradientTexture2D extends Texture {
    public var fill: Int;
    public var fillFrom: Vector2;
    public var fillTo: Vector2;
    public var gradient: Gradient;
    public var height: Int;
    public var repeat: Int;
    public var useHdr: Bool;
    public var width: Int;
    @:native("__new")
    public function new();
}
