package lucidKit.godot;

class ShaderMaterialSignalNames {
}
@:native("godot.ShaderMaterial")
extern class ShaderMaterial extends Material {
    public var shader: Shader;
    public function getShaderParam(param: String): Variant;
    public function propertyCanRevert(name: String): Bool;
    public function propertyGetRevert(name: String): Variant;
    public function setShaderParam(param: String, value: Variant): Void;
    @:native("__new")
    public function new();
}
