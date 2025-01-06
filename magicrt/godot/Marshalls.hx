package magicrt.godot;

class MarshallsSignalNames {
}
@:native("godot.Marshalls")
extern class Marshalls extends Object {
    public function base64ToRaw(base64Str: String): Dynamic;
    public function base64ToUtf8(base64Str: String): String;
    public function base64ToVariant(base64Str: String, allowObjects: Bool = false): Dynamic;
    public function rawToBase64(array: Dynamic): String;
    public function utf8ToBase64(utf8Str: String): String;
    public function variantToBase64(variant: Dynamic, fullObjects: Bool = false): String;
    @:native("__new")
    public function new();
}
