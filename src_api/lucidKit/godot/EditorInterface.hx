package lucidkit.godot;

@:native("godot.EditorInterface")
extern class EditorInterface extends Node {
    public var distraction_free_mode: Bool;
    public function edit_node(node: Node): Void;
    public function edit_resource(resource: Resource): Void;
    public function edit_script(script: Script, line: Int, column: Int, grab_focus: Bool): Void;
    public function get_base_control(): Control;
    public function get_current_path(): String;
    public function get_edited_scene_root(): Node;
    public function get_editor_scale(): Float;
    public function get_editor_settings(): EditorSettings;
    public function get_editor_viewport(): Control;
    public function get_file_system_dock(): FileSystemDock;
    public function get_inspector(): EditorInspector;
    public function get_open_scenes(): Array<Dynamic>;
    public function get_playing_scene(): String;
    public function get_resource_filesystem(): EditorFileSystem;
    public function get_resource_previewer(): EditorResourcePreview;
    public function get_script_editor(): ScriptEditor;
    public function get_selected_path(): String;
    public function get_selection(): EditorSelection;
    public function inspect_object(object: Object, for_property: String, inspector_only: Bool): Void;
    public function is_playing_scene(): Bool;
    public function is_plugin_enabled(plugin: String): Bool;
    public function make_mesh_previews(meshes: Array<Dynamic>, preview_size: Int): Array<Dynamic>;
    public function open_scene_from_path(scene_filepath: String): Void;
    public function play_current_scene(): Void;
    public function play_custom_scene(scene_filepath: String): Void;
    public function play_main_scene(): Void;
    public function reload_scene_from_path(scene_filepath: String): Void;
    public function save_scene(): Int;
    public function save_scene_as(path: String, with_preview: Bool): Void;
    public function select_file(file: String): Void;
    public function set_main_screen_editor(name: String): Void;
    public function set_plugin_enabled(plugin: String, enabled: Bool): Void;
    public function stop_playing_scene(): Void;
}
