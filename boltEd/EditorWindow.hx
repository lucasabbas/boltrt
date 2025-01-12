package boltEd;

import bolt.godot.PopupMenu.PopupMenuSignalNames;
import bolt.godot.OS;
import bolt.godot.Engine;
import bolt.sys.Mono;
import haxe.macro.Expr.Catch;
import bolt.godot.FileDialog;
import bolt.godot.SignalToFunc;
import bolt.godot.Button;
import bolt.ui.Widget;
import bolt.godot.MenuButton;
import bolt.godot.Vector2;
import bolt.godot.Image;
import bolt.godot.ImageTexture;
import bolt.godot.extensions.AcceptDialogPlus;
import bolt.io.IoManager;
import lua.Table;

class EditorWindow extends Widget {
    public var fileMenuButton: MenuButton;
    public var editMenuButton: MenuButton;
    public var helpMenuButton: MenuButton;

    public var newProjectButton : Button;
    public var openProjectButton : Button;

    public var openFileDialog : FileDialog;

    public var projectPath : String;

    public var projectName : String;

    public var explorer : Explorer;

    public var aboutDialog : AcceptDialogPlus;

    public override function init() {
        var plugins : Array<Plugin> = new Array<Plugin>();
        
        untyped __lua__("_G.plugins = self.plugins");

        var globalPluginFileListTable = ioCore.getFileList("data://plugins/", ".lua", false);
        var globalPluginFileList = Table.toArray(globalPluginFileListTable);
        for (i in 0...globalPluginFileList.length) {
            var pluginFile = globalPluginFileList[i];
            untyped __lua__("require(pluginFile)");
        }

        explorer = new Explorer(this);
        document.loadFromPath("data://editorWindow.xml", ioCore);
        explorer.init();

        fileMenuButton = cast document.getObject("Control/VBoxContainer/MenuBar/HBoxContainer/FileButton");
        editMenuButton = cast document.getObject("Control/VBoxContainer/MenuBar/HBoxContainer/EditButton");
        helpMenuButton = cast document.getObject("Control/VBoxContainer/MenuBar/HBoxContainer/HelpButton");

        var fileMenu = fileMenuButton.getPopup();
        var editMenu = editMenuButton.getPopup();
        var helpMenu = helpMenuButton.getPopup();

        SignalToFunc.connect(fileMenu, PopupMenuSignalNames.idPressed, (id : Int) -> {
            Sys.println("id: " + id);
            if (id == 0) {
                onNewProject();
            }
            else if (id == 1) {
                openProjectDialog();
            }
            else if (id == 2) {
                document.getTree().quit();
            }
        });

        SignalToFunc.connect(editMenu, PopupMenuSignalNames.idPressed, (id : Int) -> {
            
        });

        SignalToFunc.connect(helpMenu, PopupMenuSignalNames.idPressed, (id : Int) -> {
            if (id == 0) {
                aboutDialog.popupCentered(new Vector2(0, 0));
            }
        });
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
        
        SignalToFunc.connect(openFileDialog, FileDialogSignalNames.fileSelected, (filePath : String) -> openProject(filePath));

        document.addChild(openFileDialog);

        try {
            aboutDialog = new AcceptDialogPlus();
            aboutDialog.windowTitle = "About";
            var iconImage = new Image();
            iconImage.loadPngFromBuffer(ioCore.loadBuffer("data://icon_032.png"));
            var iconTexture = new ImageTexture();
            iconTexture.createFromImage(iconImage);
            aboutDialog.setIcon(iconTexture);
            aboutDialog.text = "Bolt version 0.0.9\n";
            var engineVersionTable = Engine.getVersionInfo();
            var engineVersion = Table.toMap(engineVersionTable);
            aboutDialog.text += "Godot Version: " + engineVersion["major"] + "." + engineVersion["minor"] + "." + engineVersion["patch"] + "\n";
            aboutDialog.text += ".NET Framework Version: " + Mono.frameworkVersion + "\n";
            aboutDialog.text += "Mono Version: " + Mono.version + "\n";
            aboutDialog.text += "Mono Runtime Version: " + Mono.runtimeVersion + "\n";
            aboutDialog.text += "CPU Architecture: " + Mono.cpuArchitecture + "\n";
            aboutDialog.text += "Operating System: " + Mono.operatingSystem + "\n";
            document.addChild(aboutDialog);
        }
        catch (e) {
            Sys.println(e + " : " + e.stack);
        }
        

        var args = OS.getCmdlineArgs();
        var argsArray = lua.Table.toArray(args);
        var boltProjPath : String = "";
        for (i in 0...argsArray.length) {
            var arg = argsArray[i];
            if (StringTools.contains(arg, ".bolt")) {
                boltProjPath = arg;
            }
        }
        if (boltProjPath == "") {
            var boltFileExists = untyped __lua__("_G.boltFile ~= nil");
            if (boltFileExists) {
                boltProjPath = untyped __lua__("_G.boltFile");
            }
        }

        for (i in 0...plugins.length) {
            var plugin = plugins[i];
            plugin.explorerObj = explorer;
            plugin.window = this;
            plugin.init();
        }
        
        if (StringTools.contains(boltProjPath, ".bolt")){
            openProject(boltProjPath);
        }
    }

    public function onNewProject() {
        //trace("New Project");
        //trace(untyped __lua__("self ~= nil"));
    }

    public function openProject(filePath : String) {
        var filePathArray = filePath.split("/");
        var fileName = filePathArray[filePathArray.length - 1];
        projectName = fileName;
        filePathArray.remove(fileName);
        var dirPath = filePathArray.join("/");
        projectPath = dirPath;

        var ioManager : IoManager = cast ioCore;
        ioManager.registerPath(dirPath, "project://");

        if (ioCore.directoryExists("project://plugins/")) {
            var plugins : Array<Plugin> = new Array<Plugin>();
            untyped __lua__("_G.plugins = self.plugins");
            var projectPluginFileListTable = ioCore.getFileList("project://plugins/", ".lua", false);
            var projectPluginFileList = Table.toArray(projectPluginFileListTable);
            for (i in 0...projectPluginFileList.length) {
                var pluginFile = projectPluginFileList[i];
                untyped __lua__("require(pluginFile)");
            }

            for (i in 0...plugins.length) {
                var plugin = plugins[i];
                plugin.explorerObj = explorer;
                plugin.window = this;
                plugin.init();
            }
        }

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