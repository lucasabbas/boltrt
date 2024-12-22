package lucidkit.godot;

@:native("godot.EditorSceneImporter")
extern class EditorSceneImporter extends Reference {
    public function _get_extensions(): Array<Dynamic>;
    public function _get_import_flags(): Int;
    public function _import_animation(path: String, flags: Int, bake_fps: Int): Animation;
    public function _import_scene(path: String, flags: Int, bake_fps: Int): Node;
    public function import_animation_from_other_importer(path: String, flags: Int, bake_fps: Int): Animation;
    public function import_scene_from_other_importer(path: String, flags: Int, bake_fps: Int, compress_flags: Int): Node;
}
