package magicrt.godot;

class EditorFeatureProfileSignalNames {
}
@:native("godot.EditorFeatureProfile")
extern class EditorFeatureProfile extends Reference {
    public function getFeatureName(feature: Int): String;
    public function isClassDisabled(className: String): Bool;
    public function isClassEditorDisabled(className: String): Bool;
    public function isClassPropertyDisabled(className: String, property: String): Bool;
    public function isFeatureDisabled(feature: Int): Bool;
    public function loadFromFile(path: String): Int;
    public function saveToFile(path: String): Int;
    public function setDisableClass(className: String, disable: Bool): Void;
    public function setDisableClassEditor(className: String, disable: Bool): Void;
    public function setDisableClassProperty(className: String, property: String, disable: Bool): Void;
    public function setDisableFeature(feature: Int, disable: Bool): Void;
    @:native("__new")
    public function new();
}
