package lucidkit.godot;

@:native("godot.VisualShaderNodeCompare")
extern class VisualShaderNodeCompare extends VisualShaderNode {
    public var condition: Int;
    public var function: Int;
    public var type: Int;
}
