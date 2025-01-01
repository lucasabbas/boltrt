package bolt.godot;

class ShaderSignalNames {
}
@:native("godot.Shader")
extern class Shader extends Resource {
    public var code: String;
    public var customDefines: String;
    public function getDefaultTextureParam(param: String): Texture;
    public function getMode(): Int;
    public function hasParam(name: String): Bool;
    public function setDefaultTextureParam(param: String, texture: Texture): Void;
    @:native("__new")
    public function new();
}
