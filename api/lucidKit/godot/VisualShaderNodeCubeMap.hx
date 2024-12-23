package lucidKit.godot;

@:native("godot.VisualShaderNodeCubeMap")
extern class VisualShaderNodeCubeMap extends VisualShaderNode {
    public var cubeMap: CubeMap;
    public var source: Int;
    public var textureType: Int;
    @:native("__new")
    public function new();
}
