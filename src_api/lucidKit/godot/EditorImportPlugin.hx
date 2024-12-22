package lucidkit.godot;

@:native("godot.EditorImportPlugin")
extern class EditorImportPlugin extends ResourceImporter {
    public function get_import_options(preset: Int): Array<Dynamic>;
    public function get_import_order(): Int;
    public function get_importer_name(): String;
    public function get_option_visibility(option: String, options: Map<Dynamic, Dynamic>): Bool;
    public function get_preset_count(): Int;
    public function get_preset_name(preset: Int): String;
    public function get_priority(): Float;
    public function get_recognized_extensions(): Array<Dynamic>;
    public function get_resource_type(): String;
    public function get_save_extension(): String;
    public function get_visible_name(): String;
    public function import(source_file: String, save_path: String, options: Map<Dynamic, Dynamic>, platform_variants: Array<Dynamic>, gen_files: Array<Dynamic>): Int;
}
