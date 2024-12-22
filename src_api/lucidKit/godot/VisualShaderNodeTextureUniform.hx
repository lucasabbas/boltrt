package lucidKit.godot;

@:native("godot.VisualShaderNodeTextureUniform")
extern class VisualShaderNodeTextureUniform extends VisualShaderNodeUniform {
    public var colorDefault: Int;
    public var textureType: Int;
    @:native("__new")
    public function new();
}
