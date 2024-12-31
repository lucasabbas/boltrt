package lucidKit.godot;

class LightLightBakeMode {
    public static var Disabled: Int = 0;
    public static var Indirect: Int = 1;
    public static var All: Int = 2;
}
class LightPortalMode {
    public static var Static: Int = 0;
    public static var Dynamic: Int = 1;
    public static var Roaming: Int = 2;
    public static var Global: Int = 3;
    public static var Ignore: Int = 4;
}
class LightMergingMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LightPauseMode {
    public static var Inherit: Int = 0;
    public static var Stop: Int = 1;
    public static var Process: Int = 2;
}
class LightPhysicsInterpolationMode {
    public static var Inherit: Int = 0;
    public static var Off: Int = 1;
    public static var On: Int = 2;
}
class LightSignalNames {
}
@:native("godot.Light")
extern class Light extends VisualInstance {
    public var editorOnly: Bool;
    public var lightBakeMode: Int;
    public var lightColor: Color;
    public var lightCullMask: Int;
    public var lightEnergy: Float;
    public var lightIndirectEnergy: Float;
    public var lightNegative: Bool;
    public var lightSize: Float;
    public var lightSpecular: Float;
    public var shadowBias: Float;
    public var shadowColor: Color;
    public var shadowContact: Float;
    public var shadowEnabled: Bool;
    public var shadowReverseCullFace: Bool;
    public function getParam(param: Int): Float;
    public function setParam(param: Int, value: Float): Void;
    @:native("__new")
    public function new();
}
