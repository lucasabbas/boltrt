package lucidkit.godot;

@:native("godot.PHashTranslation")
extern class PHashTranslation extends Translation {
    public function generate(from: Translation): Void;
}
