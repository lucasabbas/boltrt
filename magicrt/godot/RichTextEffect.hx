package magicrt.godot;

class RichTextEffectSignalNames {
}
@:native("godot.RichTextEffect")
extern class RichTextEffect extends Resource {
    public function ProcessCustomFx(charFx: CharFXTransform): Bool;
    @:native("__new")
    public function new();
}
