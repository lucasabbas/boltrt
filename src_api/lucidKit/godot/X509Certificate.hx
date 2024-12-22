package lucidkit.godot;

@:native("godot.X509Certificate")
extern class X509Certificate extends Resource {
    public function load(path: String): Int;
    public function save(path: String): Int;
}
