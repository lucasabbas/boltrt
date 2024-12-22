package lucidKit.godot;

@:native("godot.VisualShaderNodeTexture")
extern class VisualShaderNodeTexture extends VisualShaderNode {
    public var source: Int;
    public var texture: Texture;
    public var textureType: Int;
    @:native("__new")
    public function new();
}
