package boltEd;

import bolt.godot.FileDialog;
import bolt.godot.SignalToFunc;
import bolt.godot.Button;
import bolt.ui.Widget;
import bolt.godot.MenuButton;
import bolt.godot.Vector2;
import bolt.io.IoManager;


class EditorWindow extends Widget {
    public var fileMenuButton: MenuButton;
    public var editMenuButton: MenuButton;
    public var helpMenuButton: MenuButton;

    public var newProjectButton : Button;
    public var openProjectButton : Button;

    public var openFolderDialog : FileDialog;

    public var projectPath : String;

    public var explorer : Explorer;

    public override function init() {
        explorer = new Explorer(this);
        document.loadFromPath("data://editorWindow.xml", ioCore);
        explorer.init();

        fileMenuButton = cast document.getObject("Control/VBoxContainer/MenuBar/HBoxContainer/FileButton");
        editMenuButton = cast document.getObject("Control/VBoxContainer/MenuBar/HBoxContainer/EditButton");
        helpMenuButton = cast document.getObject("Control/VBoxContainer/MenuBar/HBoxContainer/HelpButton");

        //trace(fileMenuButton != null);
        //trace(editMenuButton != null);
        //trace(helpMenuButton != null);

        newProjectButton = cast document.getObject("Control/VBoxContainer/ToolBar/HBoxContainer/NewProjectButton");
        openProjectButton = cast document.getObject("Control/VBoxContainer/ToolBar/HBoxContainer/OpenProjectButton");

        //trace(newProjectButton != null);
        //trace(openProjectButton != null);

        SignalToFunc.connect(newProjectButton, "pressed", () -> onNewProject());
        SignalToFunc.connect(openProjectButton, "pressed", () -> openProjectDialog());

        openFolderDialog = new FileDialog();
        openFolderDialog.mode = FileDialogMode.OpenDir;
        openFolderDialog.access = FileDialogAccess.Filesystem;
        openFolderDialog.windowTitle = "Open Project";
        openFolderDialog.resizable = true;
        
        SignalToFunc.connect(openFolderDialog, FileDialogSignalNames.dirSelected, (dirPath : String) -> openProject(dirPath));

        document.addChild(openFolderDialog);
    }

    public function onNewProject() {
        trace("New Project");
        trace(untyped __lua__("self ~= nil"));
    }

    public function openProject(dirPath : String) {   
        trace("Open Project: " + dirPath);
        projectPath = dirPath;

        var ioManager : IoManager = cast ioCore;
        ioManager.registerPath(dirPath, "project://");
    }

    public function openProjectDialog() {
        trace("Open Project");
        var fileDialogSize = new Vector2(550, 350);
        openFolderDialog.popupCentered(fileDialogSize);
        //fileDialog.currentDir = "res://";
    }

    public function buildDirTree() {

    }

    public function refreshFile() {
        
    }
}