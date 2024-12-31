package lucidEd;

import lucidKit.godot.FileDialog;
import lucidKit.godot.SignalToFunc;
import lucidKit.godot.Button;
import lucidKit.ui.Widget;
import lucidKit.godot.MenuButton;

class EditorWindow extends Widget {
    public var fileMenuButton: MenuButton;
    public var editMenuButton: MenuButton;
    public var helpMenuButton: MenuButton;

    public var newProjectButton : Button;
    public var openProjectButton : Button;

    public override function init() {
        document.loadFromPath("data://editorWindow.xml", ioCore);

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
        SignalToFunc.connect(openProjectButton, "pressed", () -> onOpenProject());
    }

    public function onNewProject() {
        trace("New Project");
        trace(untyped __lua__("self ~= nil"));
    }

    public function onOpenProject() {
        trace("Open Project");

        var fileDialog = new FileDialog();
        fileDialog.mode = FileDialog.MODE_OPEN_FILE;
    }
}