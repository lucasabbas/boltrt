package lucidKit.godot;

@:native("godot.EditorResourcePreviewGenerator")
extern class EditorResourcePreviewGenerator extends Reference {
    public function canGenerateSmallPreview(): Bool;
    public function generate(from: Resource, size: GdVector2): Texture;
    public function generateFromPath(path: String, size: GdVector2): Texture;
    public function generateSmallPreviewAutomatically(): Bool;
    public function handles(type: String): Bool;
    @:native("__new")
    public function new();
}
