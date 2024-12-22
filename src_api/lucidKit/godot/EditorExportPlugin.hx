package lucidKit.godot;

@:native("godot.EditorExportPlugin")
extern class EditorExportPlugin extends Reference {
    public function _export_begin(features: PoolStringArray, is_debug: Bool, path: String, flags: Int): Void;
    public function _export_end(): Void;
    public function _export_file(path: String, type: String, features: PoolStringArray): Void;
    public function add_file(path: String, file: PoolByteArray, remap: Bool): Void;
    public function add_ios_bundle_file(path: String): Void;
    public function add_ios_cpp_code(code: String): Void;
    public function add_ios_embedded_framework(path: String): Void;
    public function add_ios_framework(path: String): Void;
    public function add_ios_linker_flags(flags: String): Void;
    public function add_ios_plist_content(plist_content: String): Void;
    public function add_ios_project_static_lib(path: String): Void;
    public function add_osx_plugin_file(path: String): Void;
    public function add_shared_object(path: String, tags: PoolStringArray): Void;
    public function skip(): Void;
    @:native("__new")
    public function new();
}
