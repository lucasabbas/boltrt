package lucidKit.godot;

@:native("godot.VisualShaderNodeCubeMap")
extern class VisualShaderNodeCubeMap extends VisualShaderNode {
    public var cube_map: CubeMap;
    public var source: Int;
    public var texture_type: Int;
    @:native("__new")
    public function new();
}
