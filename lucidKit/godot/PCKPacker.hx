package lucidKit.godot;

class PCKPackerSignalNames {
}
@:native("godot.PCKPacker")
extern class PCKPacker extends Reference {
    public function addFile(pckPath: String, sourcePath: String): Int;
    public function flush(verbose: Bool = false): Int;
    public function pckStart(pckName: String, alignment: Int = 0): Int;
    @:native("__new")
    public function new();
}
