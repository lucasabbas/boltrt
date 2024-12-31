package lucidKit.godot;

class EditorImportPluginSignalNames {
}
@:native("godot.EditorImportPlugin")
extern class EditorImportPlugin extends ResourceImporter {
    public function getImportOptions(preset: Int): Array<Dynamic>;
    public function getImportOrder(): Int;
    public function getImporterName(): String;
    public function getOptionVisibility(option: String, options: Map<Dynamic, Dynamic>): Bool;
    public function getPresetCount(): Int;
    public function getPresetName(preset: Int): String;
    public function getPriority(): Float;
    public function getRecognizedExtensions(): Array<Dynamic>;
    public function getResourceType(): String;
    public function getSaveExtension(): String;
    public function getVisibleName(): String;
    public function import(sourceFile: String, savePath: String, options: Map<Dynamic, Dynamic>, platformVariants: Array<Dynamic>, genFiles: Array<Dynamic>): Int;
    @:native("__new")
    public function new();
}
