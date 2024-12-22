package lucidkit.godot;

@:native("godot.ShaderMaterial")
extern class ShaderMaterial extends Material {
    public var shader: Shader;
    public function get_shader_param(param: String): Variant;
    public function property_can_revert(name: String): Bool;
    public function property_get_revert(name: String): Variant;
    public function set_shader_param(param: String, value: Variant): Void;
}
