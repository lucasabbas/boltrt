package magicrt.godot;

class ShaderMaterialSignalNames {
}
@:native("godot.ShaderMaterial")
extern class ShaderMaterial extends Material {
    public var shader: Shader;
    public function getShaderParam(param: String): Dynamic;
    public function propertyCanRevert(name: String): Bool;
    public function propertyGetRevert(name: String): Dynamic;
    public function setShaderParam(param: String, value: Dynamic): Void;
    @:native("__new")
    public function new();
}
