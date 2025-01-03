package boltEd;

import bolt.godot.Button;
import bolt.godot.Tree;
import boltEd.explorer.DirIndex;
import boltEd.explorer.FileIndex;
import bolt.godot.AcceptDialog;
import bolt.godot.Vector2;

class Explorer {
    public var editorWindow : EditorWindow;

    public var reloadButton : Button;

    public var newButton : Button;

    public var tree : Tree;

    public var rootDirIndex : DirIndex;

    public function new(ew : EditorWindow) {
        editorWindow = ew;
    }

    public function init() {
        reloadButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/VBoxContainer/ToolBar/HBoxContainer/ReloadButton");
        newButton = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/VBoxContainer/ToolBar/HBoxContainer/NewButton");
        tree = cast editorWindow.document.getObject("Control/VBoxContainer/HSplitContainer/Explorer/VBoxContainer/Tree");
    }

    public function buildTree(parent : DirIndex = null, path : String = "project://") {
        if (parent == null) {
            var acceptDialog = new AcceptDialog();
            acceptDialog.windowTitle = "Error";
            acceptDialog.dialogText = "Invalid directory index: parent is null or undefined.";
            editorWindow.document.addChild(acceptDialog);
            acceptDialog.popupCentered(new Vector2(0, 0));
            return;
        }
    }
}