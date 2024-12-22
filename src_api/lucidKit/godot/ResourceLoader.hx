package lucidKit.godot;

@:native("godot.ResourceLoader")
extern class ResourceLoader extends Object {
    public function exists(path: String, type_hint: String): Bool;
    public function get_dependencies(path: String): PoolStringArray;
    public function get_recognized_extensions_for_type(type: String): PoolStringArray;
    public function has(path: String): Bool;
    public function has_cached(path: String): Bool;
    public function load(path: String, type_hint: String, no_cache: Bool): Resource;
    public function load_interactive(path: String, type_hint: String, no_cache: Bool): ResourceInteractiveLoader;
    public function set_abort_on_missing_resources(abort: Bool): Void;
    @:native("__new")
    public function new();
}
