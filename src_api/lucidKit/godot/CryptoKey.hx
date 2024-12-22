package lucidkit.godot;

@:native("godot.CryptoKey")
extern class CryptoKey extends Resource {
    public function is_public_only(): Bool;
    public function load(path: String, public_only: Bool): Int;
    public function load_from_string(string_key: String, public_only: Bool): Int;
    public function save(path: String, public_only: Bool): Int;
    public function save_to_string(public_only: Bool): String;
}
