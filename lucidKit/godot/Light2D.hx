package lucidKit.godot;

class Light2DMode {
    public static var Add: Int = 0;
    public static var Sub: Int = 1;
    public static var Mix: Int = 2;
    public static var Mask: Int = 3;
}
class Light2DShadowFilter {
    public static var None: Int = 0;
    public static var Pcf3: Int = 1;
    public static var Pcf5: Int = 2;
    public static var Pcf7: Int = 3;
    public static var Pcf9: Int = 4;
    public static var Pcf13: Int = 5;
}
class Light2DPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class Light2DPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class Light2DSignalNames {
}
@:native("godot.Light2D")
extern class Light2D extends Node2D {
    public var color: Color;
    public var editorOnly: Bool;
    public var enabled: Bool;
    public var energy: Float;
    public var mode: Int;
    public var offset: Vector2;
    public var rangeHeight: Float;
    public var rangeItemCullMask: Int;
    public var rangeLayerMax: Int;
    public var rangeLayerMin: Int;
    public var rangeZMax: Int;
    public var rangeZMin: Int;
    public var shadowBufferSize: Int;
    public var shadowColor: Color;
    public var shadowEnabled: Bool;
    public var shadowFilter: Int;
    public var shadowFilterSmooth: Float;
    public var shadowGradientLength: Float;
    public var shadowItemCullMask: Int;
    public var texture: Texture;
    public var textureScale: Float;
    @:native("__new")
    public function new();
}
