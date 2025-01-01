package bolt.godot;

class VisualShaderNodeCubeMapUniformTextureType {
    public static var Data: Int = 0;
    public static var Color: Int = 1;
    public static var Normalmap: Int = 2;
    public static var Aniso: Int = 3;
}
class VisualShaderNodeCubeMapUniformColorDefault {
    public static var White: Int = 0;
    public static var Black: Int = 1;
}
class VisualShaderNodeCubeMapUniformSignalNames {
}
@:native("godot.VisualShaderNodeCubeMapUniform")
extern class VisualShaderNodeCubeMapUniform extends VisualShaderNodeTextureUniform {
    @:native("__new")
    public function new();
}
