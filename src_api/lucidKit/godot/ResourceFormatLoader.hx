package lucidkit.godot;

@:native("godot.ResourceFormatLoader")
extern class ResourceFormatLoader extends Reference {
    public function get_dependencies(path: String, add_types: String): Void;
    public function get_recognized_extensions(): PoolStringArray;
    public function get_resource_type(path: String): String;
    public function handles_type(typename: String): Bool;
    public function load(path: String, original_path: String, no_subresource_cache: Bool): Variant;
    public function rename_dependencies(path: String, renames: String): Int;
}
