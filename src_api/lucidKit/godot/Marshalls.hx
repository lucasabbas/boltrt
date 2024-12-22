package lucidKit.godot;

@:native("godot.Marshalls")
extern class Marshalls extends Object {
    public function base64ToRaw(base64Str: String): PoolByteArray;
    public function base64ToUtf8(base64Str: String): String;
    public function base64ToVariant(base64Str: String, allowObjects: Bool = false): Variant;
    public function rawToBase64(array: PoolByteArray): String;
    public function utf8ToBase64(utf8Str: String): String;
    public function variantToBase64(variant: Variant, fullObjects: Bool = false): String;
    @:native("__new")
    public function new();
}
