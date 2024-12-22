package lucidKit.godot;

@:native("godot.EditorFeatureProfile")
extern class EditorFeatureProfile extends Reference {
    public function get_feature_name(feature: Int): String;
    public function is_class_disabled(class_name: String): Bool;
    public function is_class_editor_disabled(class_name: String): Bool;
    public function is_class_property_disabled(class_name: String, property: String): Bool;
    public function is_feature_disabled(feature: Int): Bool;
    public function load_from_file(path: String): Int;
    public function save_to_file(path: String): Int;
    public function set_disable_class(class_name: String, disable: Bool): Void;
    public function set_disable_class_editor(class_name: String, disable: Bool): Void;
    public function set_disable_class_property(class_name: String, property: String, disable: Bool): Void;
    public function set_disable_feature(feature: Int, disable: Bool): Void;
    @:native("__new")
    public function new();
}
