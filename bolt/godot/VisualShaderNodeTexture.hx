package bolt.godot;

class VisualShaderNodeTextureSource {
    public static var Texture: Int = 0;
    public static var Screen: Int = 1;
    public static var Source2dTexture: Int = 2;
    public static var Source2dNormal: Int = 3;
    public static var Depth: Int = 4;
    public static var Port: Int = 5;
}
class VisualShaderNodeTextureTextureType {
    public static var Data: Int = 0;
    public static var Color: Int = 1;
    public static var Normalmap: Int = 2;
}
class VisualShaderNodeTextureSignalNames {
}
@:native("godot.VisualShaderNodeTexture")
extern class VisualShaderNodeTexture extends VisualShaderNode {
    public var source: Int;
    public var texture: Texture;
    public var textureType: Int;
    @:native("__new")
    public function new();
}
