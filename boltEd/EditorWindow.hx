package boltEd;

import bolt.godot.OS;
import haxe.macro.Expr.Catch;
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

    public var openFileDialog : FileDialog;

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

        openFileDialog = new FileDialog();
        openFileDialog.mode = FileDialogMode.OpenFile;
        openFileDialog.addFilter("*.bolt");
        openFileDialog.access = FileDialogAccess.Filesystem;
        openFileDialog.windowTitle = "Open Project";
        openFileDialog.resizable = true;
        
        SignalToFunc.connect(openFileDialog, FileDialogSignalNames.fileSelected, (filePath : String) -> openFile(filePath));

        document.addChild(openFileDialog);

        var args = OS.getCmdlineArgs();
        var argsArray = lua.Table.toArray(args);
        for (i in 0...argsArray.length) {
            var arg = argsArray[i];
            Sys.println(arg);
        }
    }

    public function onNewProject() {
        //trace("New Project");
        //trace(untyped __lua__("self ~= nil"));
    }

    public function openFile(filePath : String) {
        var filePathArray = filePath.split("/");
        var fileName = filePathArray[filePathArray.length - 1];
        filePathArray.remove(fileName);
        var dirPath = filePathArray.join("/");
        openProject(dirPath);
    }

    public function openProject(dirPath : String) {   
        //trace("Open Project: " + dirPath);
        projectPath = dirPath;

        var ioManager : IoManager = cast ioCore;
        ioManager.registerPath(dirPath, "project://");
        try {
            explorer.start();
        } catch (e : Dynamic) {
            trace("Error: " + e);
        }
    }

    public function openProjectDialog() {
        trace("Open Project");
        var fileDialogSize = new Vector2(550, 350);
        openFileDialog.popupCentered(fileDialogSize);
        //fileDialog.currentDir = "res://";
    }
}