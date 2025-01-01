package bolt.godot;

class EditorInterfaceSignalNames {
}
@:native("godot.EditorInterface")
extern class EditorInterface extends Node {
    public var distractionFreeMode: Bool;
    public function editNode(node: Node): Void;
    public function editResource(resource: Resource): Void;
    public function editScript(script: Script, line: Int = -1, column: Int = 0, grabFocus: Bool = true): Void;
    public function getBaseControl(): Control;
    public function getCurrentPath(): String;
    public function getEditedSceneRoot(): Node;
    public function getEditorScale(): Float;
    public function getEditorSettings(): EditorSettings;
    public function getEditorViewport(): Control;
    public function getFileSystemDock(): FileSystemDock;
    public function getInspector(): EditorInspector;
    public function getOpenScenes(): Array<Dynamic>;
    public function getPlayingScene(): String;
    public function getResourceFilesystem(): EditorFileSystem;
    public function getResourcePreviewer(): EditorResourcePreview;
    public function getScriptEditor(): ScriptEditor;
    public function getSelectedPath(): String;
    public function getSelection(): EditorSelection;
    public function inspectObject(object: Object, forProperty: String, inspectorOnly: Bool = false): Void;
    public function isPlayingScene(): Bool;
    public function isPluginEnabled(plugin: String): Bool;
    public function makeMeshPreviews(meshes: Array<Dynamic>, previewSize: Int): Array<Dynamic>;
    public function openSceneFromPath(sceneFilepath: String): Void;
    public function playCurrentScene(): Void;
    public function playCustomScene(sceneFilepath: String): Void;
    public function playMainScene(): Void;
    public function reloadSceneFromPath(sceneFilepath: String): Void;
    public function saveScene(): Int;
    public function saveSceneAs(path: String, withPreview: Bool = true): Void;
    public function selectFile(file: String): Void;
    public function setMainScreenEditor(name: String): Void;
    public function setPluginEnabled(plugin: String, enabled: Bool): Void;
    public function stopPlayingScene(): Void;
    @:native("__new")
    public function new();
}
