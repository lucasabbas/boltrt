package bolt.godot;

class EditorPluginSignalNames {
    public static var mainScreenChanged: String = "main_screen_changed";
    public static var resourceSaved: String = "resource_saved";
    public static var sceneChanged: String = "scene_changed";
    public static var sceneClosed: String = "scene_closed";
}
@:native("godot.EditorPlugin")
extern class EditorPlugin extends Node {
    public function addAutoloadSingleton(name: String, path: String): Void;
    public function addControlToBottomPanel(control: Control, title: String): ToolButton;
    public function addControlToContainer(container: Int, control: Control): Void;
    public function addControlToDock(slot: Int, control: Control): Void;
    public function addCustomType(type: String, base: String, script: Script, icon: Texture): Void;
    public function addExportPlugin(plugin: EditorExportPlugin): Void;
    public function addImportPlugin(importer: EditorImportPlugin): Void;
    public function addInspectorPlugin(plugin: EditorInspectorPlugin): Void;
    public function addSceneImportPlugin(sceneImporter: EditorSceneImporter): Void;
    public function addSpatialGizmoPlugin(plugin: EditorSpatialGizmoPlugin): Void;
    public function addToolMenuItem(name: String, handler: Object, callback: String, ud: Variant): Void;
    public function addToolSubmenuItem(name: String, submenu: Object): Void;
    public function applyChanges(): Void;
    public function build(): Bool;
    public function clear(): Void;
    public function disablePlugin(): Void;
    public function edit(object: Object): Void;
    public function enablePlugin(): Void;
    public function forwardCanvasDrawOverViewport(overlay: Control): Void;
    public function forwardCanvasForceDrawOverViewport(overlay: Control): Void;
    public function forwardCanvasGuiInput(event: InputEvent): Bool;
    public function forwardSpatialDrawOverViewport(overlay: Control): Void;
    public function forwardSpatialForceDrawOverViewport(overlay: Control): Void;
    public function forwardSpatialGuiInput(camera: Camera, event: InputEvent): Bool;
    public function getBreakpoints(): PoolStringArray;
    public function getEditorInterface(): EditorInterface;
    public function getPluginIcon(): Texture;
    public function getPluginName(): String;
    public function getScriptCreateDialog(): ScriptCreateDialog;
    public function getState(): Map<Dynamic, Dynamic>;
    public function getUndoRedo(): UndoRedo;
    public function getWindowLayout(layout: ConfigFile): Void;
    public function handles(object: Object): Bool;
    public function hasMainScreen(): Bool;
    public function hideBottomPanel(): Void;
    public function makeBottomPanelItemVisible(item: Control): Void;
    public function makeVisible(visible: Bool): Void;
    public function queueSaveLayout(): Void;
    public function removeAutoloadSingleton(name: String): Void;
    public function removeControlFromBottomPanel(control: Control): Void;
    public function removeControlFromContainer(container: Int, control: Control): Void;
    public function removeControlFromDocks(control: Control): Void;
    public function removeCustomType(type: String): Void;
    public function removeExportPlugin(plugin: EditorExportPlugin): Void;
    public function removeImportPlugin(importer: EditorImportPlugin): Void;
    public function removeInspectorPlugin(plugin: EditorInspectorPlugin): Void;
    public function removeSceneImportPlugin(sceneImporter: EditorSceneImporter): Void;
    public function removeSpatialGizmoPlugin(plugin: EditorSpatialGizmoPlugin): Void;
    public function removeToolMenuItem(name: String): Void;
    public function saveExternalData(): Void;
    public function setForceDrawOverForwardingEnabled(): Void;
    public function setInputEventForwardingAlwaysEnabled(): Void;
    public function setState(state: Map<Dynamic, Dynamic>): Void;
    public function setWindowLayout(layout: ConfigFile): Void;
    public function updateOverlays(): Int;
    @:native("__new")
    public function new();
}
