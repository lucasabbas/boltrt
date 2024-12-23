package lucidKit.godot;

@:native("godot.X509Certificate")
extern class X509Certificate extends Resource {
    public function load(path: String): Int;
    public function save(path: String): Int;
    @:native("__new")
    public function new();
}
