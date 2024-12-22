package lucidKit.godot;

@:native("godot.PHashTranslation")
extern class PHashTranslation extends Translation {
    public function generate(from: Translation): Void;
    @:native("__new")
    public function new();
}
