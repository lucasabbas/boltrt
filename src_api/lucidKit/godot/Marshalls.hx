package lucidkit.godot;

@:native("godot.Marshalls")
extern class Marshalls extends Object {
    public function base64_to_raw(base64_str: String): PoolByteArray;
    public function base64_to_utf8(base64_str: String): String;
    public function base64_to_variant(base64_str: String, allow_objects: Bool): Variant;
    public function raw_to_base64(array: PoolByteArray): String;
    public function utf8_to_base64(utf8_str: String): String;
    public function variant_to_base64(variant: Variant, full_objects: Bool): String;
}
