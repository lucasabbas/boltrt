package lucidKit.godot;

class VisualShaderNodeTextureUniformTextureType {
    public static var Data: Int = 0;
    public static var Color: Int = 1;
    public static var Normalmap: Int = 2;
    public static var Aniso: Int = 3;
}
class VisualShaderNodeTextureUniformColorDefault {
    public static var White: Int = 0;
    public static var Black: Int = 1;
}
class VisualShaderNodeTextureUniformSignalNames {
}
@:native("godot.VisualShaderNodeTextureUniform")
extern class VisualShaderNodeTextureUniform extends VisualShaderNodeUniform {
    public var colorDefault: Int;
    public var textureType: Int;
    @:native("__new")
    public function new();
}
