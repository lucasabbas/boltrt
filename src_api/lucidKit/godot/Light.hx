package lucidKit.godot;

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
