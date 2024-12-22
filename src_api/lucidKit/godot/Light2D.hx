package lucidKit.godot;

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
