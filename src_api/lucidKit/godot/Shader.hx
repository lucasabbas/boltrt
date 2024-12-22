package lucidKit.godot;

@:native("godot.Shader")
extern class Shader extends Resource {
    public var code: String;
    public var custom_defines: String;
    public function get_default_texture_param(param: String): Texture;
    public function get_mode(): Int;
    public function has_param(name: String): Bool;
    public function set_default_texture_param(param: String, texture: Texture): Void;
    @:native("__new")
    public function new();
}
