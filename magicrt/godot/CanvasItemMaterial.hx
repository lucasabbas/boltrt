package magicrt.godot;

class CanvasItemMaterialBlendMode {
    public static var Mix: Int = 0;
    public static var Add: Int = 1;
    public static var Sub: Int = 2;
    public static var Mul: Int = 3;
    public static var PremultAlpha: Int = 4;
}
class CanvasItemMaterialLightMode {
    public static var Normal: Int = 0;
    public static var Unshaded: Int = 1;
    public static var LightOnly: Int = 2;
}
class CanvasItemMaterialSignalNames {
}
@:native("godot.CanvasItemMaterial")
extern class CanvasItemMaterial extends Material {
    public var blendMode: Int;
    public var lightMode: Int;
    public var particlesAnimHFrames: Int;
    public var particlesAnimLoop: Bool;
    public var particlesAnimVFrames: Int;
    public var particlesAnimation: Bool;
    @:native("__new")
    public function new();
}
