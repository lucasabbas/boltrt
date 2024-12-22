package lucidkit.godot;

@:native("godot.RichTextEffect")
extern class RichTextEffect extends Resource {
    public function _process_custom_fx(char_fx: CharFXTransform): Bool;
}
