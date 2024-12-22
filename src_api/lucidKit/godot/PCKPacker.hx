package lucidKit.godot;

@:native("godot.PCKPacker")
extern class PCKPacker extends Reference {
    public function add_file(pck_path: String, source_path: String): Int;
    public function flush(verbose: Bool): Int;
    public function pck_start(pck_name: String, alignment: Int): Int;
    @:native("__new")
    public function new();
}
