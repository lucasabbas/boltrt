package bolt.godot;

class VisualShaderNodeTextureUniformTriplanarTextureType {
    public static var Data: Int = 0;
    public static var Color: Int = 1;
    public static var Normalmap: Int = 2;
    public static var Aniso: Int = 3;
}
class VisualShaderNodeTextureUniformTriplanarColorDefault {
    public static var White: Int = 0;
    public static var Black: Int = 1;
}
class VisualShaderNodeTextureUniformTriplanarSignalNames {
}
@:native("godot.VisualShaderNodeTextureUniformTriplanar")
extern class VisualShaderNodeTextureUniformTriplanar extends VisualShaderNodeTextureUniform {
    @:native("__new")
    public function new();
}
