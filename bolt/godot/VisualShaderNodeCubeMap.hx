package bolt.godot;

class VisualShaderNodeCubeMapSource {
    public static var Texture: Int = 0;
    public static var Port: Int = 1;
}
class VisualShaderNodeCubeMapTextureType {
    public static var Data: Int = 0;
    public static var Color: Int = 1;
    public static var Normalmap: Int = 2;
}
class VisualShaderNodeCubeMapSignalNames {
}
@:native("godot.VisualShaderNodeCubeMap")
extern class VisualShaderNodeCubeMap extends VisualShaderNode {
    public var cubeMap: CubeMap;
    public var source: Int;
    public var textureType: Int;
    @:native("__new")
    public function new();
}
