package lucidKit.godot;

@:native("godot.CryptoKey")
extern class CryptoKey extends Resource {
    public function isPublicOnly(): Bool;
    public function load(path: String, publicOnly: Bool = false): Int;
    public function loadFromString(stringKey: String, publicOnly: Bool = false): Int;
    public function save(path: String, publicOnly: Bool = false): Int;
    public function saveToString(publicOnly: Bool = false): String;
    @:native("__new")
    public function new();
}
