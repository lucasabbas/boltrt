package lucidKit.godot;

@:native("godot.EditorResourcePreviewGenerator")
extern class EditorResourcePreviewGenerator extends Reference {
    public function can_generate_small_preview(): Bool;
    public function generate(from: Resource, size: GdVector2): Texture;
    public function generate_from_path(path: String, size: GdVector2): Texture;
    public function generate_small_preview_automatically(): Bool;
    public function handles(type: String): Bool;
    @:native("__new")
    public function new();
}
